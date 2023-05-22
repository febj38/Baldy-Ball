//From the Milestone 3 I implemented all the objectives I hoped to from the last time. I implemented
// a palette switch by pressing (BUTTON_L) which will cycle between 5 colors in the spritepalette 
// and I assigned differing hspeeds to each color, yet I did not implement the ball moving mechanic
// after the pass from the setter. Furthermore, I got the volleyball to travel across the net from 
// the opponent, and after passing the ball back to the setter with (BUTTON_A) after it lands on your 
// side, you will then be allowed to hit the ball back over (after a proper set). Additionally, 
// I fixed the initGame() issues I was having previously, and the game reinitializes each time after 
// pressing (BUTTON_B). Right now, I am implementing the hitting-back mechanic which will allow you 
// to change the direction of returning the ball as well as the power utilizing the Palette modification.


#include "gba.h" 
#include "print.h"
#include "pause.h"
#include "win.h"
#include "vballmain.h"
#include "lose.h"
#include "2dVballCourt.h"
#include "baldy.h"
#include "game.h"
#include "serve1.h"
#include "serve2.h"
#include "serve3.h"
#include "serve4.h"
#include "serve5.h"
#include "sound.h"
#include "wiiSong.h"
#include "slap.h"
#include "vballmainPar1.h"
#include "baldyPar2.h"
#include "controls.h"
#include "instructions1.h"
#include "instructions2.h"
#include "instructions3.h"

// Prototypes
void initialize();

// State Prototypes
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void serve1();
void goToServe1();
void serve2();
void goToServe2();
void serve3();
void goToServe3();
void serve4();
void goToServe4();
void serve5();
void goToServe5();
void controls();
void goToControls();
void lose();
void instruction1();
void goToInstruction1();
void instruction2();
void goToInstruction2();
void instruction3();
void goToInstruction3();
int srand();
int rand();



int enemies = 4;
int ballPower = 0;
extern int score;
extern int oppScore;
extern int serving;
//int firstserve = 1;
int servePower = 0;
int point = 0;
int oppSet = 0;
// States


enum
{
    START,
    GAME,
    PAUSE,
    WIN,
    LOSE, 
    SERVE1,
    SERVE2,
    SERVE3, 
    SERVE4,
    SERVE5,
    CONTROL,
    INSTRUCT1,
    INSTRUCT2,
    INSTRUCT3
};
int state;

// Button Variables
unsigned short buttons;
unsigned short oldButtons;

ANISPRITE baldy;
ANISPRITE setterL;
ANISPRITE setterR;
ANISPRITE opp;
ANISPRITE ball;
ANISPRITE ones;
ANISPRITE Tens;
ANISPRITE powerBar;
ANISPRITE scor;
int y = 0;

// Shadow OAM
OBJ_ATTR shadowOAM[128];
extern int transNum;

typedef struct {

    char* title;
    unsigned short color;

    unsigned int sampleRate;
    unsigned int length;
    signed char* data;

} SONG;

SONG songs[SONGCOUNT];

int main() {

    initialize();

    while (1)
    {

        shadowOAM[2].attr0 = (setterL.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[2].attr1 = (setterL.worldCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[2].attr2 = ATTR2_TILEID(setterL.aniState *2, setterL.curFrame *2 + 18) | ATTR2_PALROW(0);

        shadowOAM[3].attr0 = (setterR.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[3].attr1 = (setterR.worldCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[3].attr2 = ATTR2_TILEID(setterR.aniState *2 + 10, setterR.curFrame *2 + 18 ) | ATTR2_PALROW(0);

        shadowOAM[4].attr0 = (ball.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[4].attr1 = (ball.worldCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[4].attr2 = ATTR2_TILEID(ball.aniState * 2, ball.curFrame * 2 + 6) | ATTR2_PALROW(0);
        
        shadowOAM[32].attr0 = (scor.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_WIDE;
        shadowOAM[32].attr1 = (scor.worldCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[32].attr2 = ATTR2_TILEID(scor.aniState * 4, scor.curFrame * 1 + 27) | ATTR2_PALROW(0);

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;


        // State Machine
        switch (state)
        {
        case START:
            start();
            break;
        case GAME:
            game();
            break;
        case PAUSE:
            pause();
            break;
        case WIN:
            win();
            break;
        case SERVE1:
            serve1();
            break;
        case SERVE2:
            serve2();
            break;
        case SERVE3:
            serve3();
            break;
        case SERVE4:
            serve4();
            break;
        case SERVE5:
            serve5();
            break;
        case CONTROL:
            controls();
            break;
        case INSTRUCT1:
            instruction1();
            break;
        case INSTRUCT2:
            instruction2();
            break;
        case INSTRUCT3:
            instruction3();
            break;
        case LOSE:
            lose();
            break;
        }
        
        waitForVBlank();
    }
}


// Sets up GBA
void initialize() {
    mgba_open();

    setupSounds();
    setupInterrupts();

    songs[0].sampleRate = wiiSong_sampleRate;
    songs[0].length = wiiSong_length;
    songs[0].data = (signed char*) wiiSong_data;

    
    songs[1].sampleRate = slap_sampleRate;
    songs[1].length = slap_length;
    songs[1].data = (signed char*) slap_data;

    DMANow(3, _dVballCourtTiles, &CHARBLOCK[1], _dVballCourtTilesLen/2);

    // DMA in the sprites tiles and the palette
    DMANow(3, baldyTiles, &CHARBLOCK[4], baldyTilesLen/2 );
    DMANow(3, baldyPal, SPRITEPALETTE, baldyPalLen/2);
   
    hideSprites();
   
    initGame();

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_SIZE_SMALL | 1;
    buttons = BUTTONS;

    oldButtons = 0;

    goToStart();
}


void goToStart() {
    state = START;

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | BG2_ENABLE; 
     REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_SIZE_SMALL | 1;
    REG_BG1CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(15) | BG_SIZE_SMALL;
    REG_BG2CNT = BG_CHARBLOCK(2) | BG_SCREENBLOCK(7) | BG_SIZE_SMALL;

    playSoundA(songs[0].data, songs[0].length, 1);

    DMANow(3, vballmainPal, PALETTE, vballmainPalLen/2);
    DMANow(3, vballmainTiles, &CHARBLOCK[0], vballmainTilesLen/2);
    DMANow(3, vballmainMap, &SCREENBLOCK[31], vballmainMapLen/2 );
   

    DMANow(3, vballmainPar1Tiles, &CHARBLOCK[1], vballmainPar1TilesLen/2);
    DMANow(3, vballmainPar1Map, &SCREENBLOCK[15], vballmainPar1MapLen/2);


    DMANow(3, baldyPar2Tiles, &CHARBLOCK[2], baldyPar2TilesLen/2);
    DMANow(3, baldyPar2Map, &SCREENBLOCK[7], baldyPar2MapLen/2);
    
   
  
}

int seed = 0;

// Runs every frame of the start state
void start() {
   REG_BG0VOFF = 0;
   REG_BG0HOFF = 0;
   REG_BG1VOFF = vOff;
   REG_BG1HOFF = hOff;
   REG_BG2HOFF = hOff * -1;
   REG_BG2VOFF = 128;

    seed++;
    hOff++;
    

    if (BUTTON_PRESSED(BUTTON_START)) {     
        srand(seed);
        goToControls();                                                     
    }
}

void controls() {

  if(BUTTON_PRESSED(BUTTON_START)) {
      goToInstruction1();
  }
  if(BUTTON_PRESSED(BUTTON_B)){
    goToGame();
  }

}
void goToInstruction1() {
REG_DISPCTL = MODE0 | BG0_ENABLE;
      hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;


    //DMA the background palette
    DMANow(3, instructions1Pal, PALETTE, instructions1PalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, instructions1Tiles, &CHARBLOCK[0], instructions1TilesLen/2);
    //DMA the background map
    DMANow(3, instructions1Map, &SCREENBLOCK[31], instructions1MapLen/2 );


    state = INSTRUCT1;
}
void instruction1() {
  if(BUTTON_PRESSED(BUTTON_START)) {
      goToInstruction2();
  }
}
void goToInstruction2() {
REG_DISPCTL = MODE0 | BG0_ENABLE;
     
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;


    //DMA the background palette
    DMANow(3, instructions2Pal, PALETTE, instructions2PalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, instructions2Tiles, &CHARBLOCK[0], instructions2TilesLen/2);
    //DMA the background map
    DMANow(3, instructions2Map, &SCREENBLOCK[31], instructions2MapLen/2 );


    state = INSTRUCT2;
}

void instruction2() {
  if(BUTTON_PRESSED(BUTTON_START)) {
      goToInstruction3();
  }
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
      goToInstruction1();
  }
}
void goToInstruction3() {
 REG_DISPCTL = MODE0 | BG0_ENABLE;
      hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;


    //DMA the background palette
    DMANow(3, instructions3Pal, PALETTE, instructions1PalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, instructions3Tiles, &CHARBLOCK[0], instructions3TilesLen/2);
    //DMA the background map
    DMANow(3, instructions3Map, &SCREENBLOCK[31], instructions3MapLen/2 );


    state = INSTRUCT3;
}

void instruction3() {
  if(BUTTON_PRESSED(BUTTON_START)) {
      goToGame();
  }
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
      goToInstruction2();
  }
}

void goToControls() {
    REG_DISPCTL = MODE0 | BG0_ENABLE;
      hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;


    //DMA the background palette
    DMANow(3, controlsPal, PALETTE, controlsPalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, controlsTiles, &CHARBLOCK[0], controlsTilesLen/2);
    //DMA the background map
    DMANow(3, controlsMap, &SCREENBLOCK[31], controlsMapLen/2 );


    state = CONTROL;

}

// Sets up the game state
void goToGame() {

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE; // Enable sprites
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    drawScore();
    drawOppScore();
    hidePowerBar();
    mgba_printf("gettin called?");
   
  

    //DMA the background palette
    DMANow(3, _dVballCourtPal, PALETTE, _dVballCourtPalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, _dVballCourtTiles, &CHARBLOCK[0], _dVballCourtTilesLen/2);
    //DMA the background map
    DMANow(3, _dVballCourtMap, &SCREENBLOCK[31], _dVballCourtMapLen/2 );
    
    state = GAME;
}

void game() {
  
        
    if (BUTTON_PRESSED(BUTTON_START)) {
       goToPause();
    }

    if(BUTTON_PRESSED(BUTTON_R)) {
      goToControls();
    }
    if ((collision(baldy.worldCol + baldy.width - 1 + baldy.hspeed, baldy.worldRow, baldy.width -1, baldy.height - 1, 
    ball.worldCol, ball.worldRow, ball.width, ball.height) || collision(baldy.worldCol +  baldy.width - 1, baldy.worldRow + baldy.height - 1, baldy.width -1, baldy.height - 1, 
    ball.worldCol, ball.worldRow, ball.width, ball.height))&& serving && BUTTON_PRESSED(BUTTON_A)){
        goToServe1();
    }

    if (score == 7) {
      point++;
      if(point == 1) {
      SCREENBLOCK[31].tilemap[OFFSET(1,18,32)] = 479;
       if (point == 2) {
      SCREENBLOCK[31].tilemap[OFFSET(2,18,32)] = 479;
      } 
       if(point == 3)  {
      SCREENBLOCK[31].tilemap[OFFSET(3,18,32)] = 479;
          goToWin();
      }
    }
    score = 0;
    oppScore = 0;
    }

    if(oppScore == 7) {
      goToLose();
      
    }

    if(BUTTON_PRESSED(BUTTON_B)) {
      updateScore();
    }

    updateGame();
    waitForVBlank();
    drawGame();
}

void goToServe1(){
    REG_DISPCTL = MODE0 | BG0_ENABLE |SPRITE_ENABLE;
      hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;
  

    //DMA the background palette
    DMANow(3, serve1Pal, PALETTE, serve1PalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, serve1Tiles, &CHARBLOCK[0], serve1TilesLen/2);
    //DMA the background map
    DMANow(3, serve1Map, &SCREENBLOCK[31], serve1MapLen/2 );


    state = SERVE1;

}

void goToServe2() {
    REG_DISPCTL = MODE0 | BG0_ENABLE |SPRITE_ENABLE; 
     hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;


    //DMA the background palette
    DMANow(3, serve2Pal, PALETTE, serve2PalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, serve2Tiles, &CHARBLOCK[0], serve2TilesLen/2);
    //DMA the background map
    DMANow(3, serve2Map, &SCREENBLOCK[31], serve2MapLen/2 );

    state = SERVE2;
}

void goToServe3(){
    REG_DISPCTL = MODE0 | BG0_ENABLE |SPRITE_ENABLE; 
     hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    //DMA the background palette
    DMANow(3, serve3Pal, PALETTE, serve3PalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, serve3Tiles, &CHARBLOCK[0], serve3TilesLen/2);
    //DMA the background map
    DMANow(3, serve3Map, &SCREENBLOCK[31], serve3MapLen/2 );

    state = SERVE3;

}
void goToServe4(){
    REG_DISPCTL = MODE0 | BG0_ENABLE |SPRITE_ENABLE;
        hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    //DMA the background palette
    DMANow(3, serve4Pal, PALETTE, serve4PalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, serve4Tiles, &CHARBLOCK[0], serve4TilesLen/2);
    //DMA the background map
    DMANow(3, serve4Map, &SCREENBLOCK[31], serve4MapLen/2 );

    state = SERVE4;

}

void goToServe5(){
    REG_DISPCTL = MODE0 | BG0_ENABLE |SPRITE_ENABLE;
     hideSprites();
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    //DMA the background palette
    DMANow(3, serve5Pal, PALETTE, serve5PalLen/2);
    //DMA thee backgorund tiles
    DMANow(3, serve5Tiles, &CHARBLOCK[0], serve5TilesLen/2);

    //DMA the background map
    DMANow(3, serve5Map, &SCREENBLOCK[31], serve5MapLen/2 );
    state = SERVE5;

}

void serve1() {
   
     drawPowerBar();
     updatePowerBar();
     hideOthers();
     waitForVBlank();
     DMANow(3, &shadowOAM, OAM, 512 );
     

    if(BUTTON_PRESSED(BUTTON_DOWN)) {
        goToServe2();
    }
    if(BUTTON_PRESSED(BUTTON_UP)) {
        goToServe3();
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
      if (powerBar.aniState == 0){
        //if ballpower is highest, hits net, opp scores 
        ball.hspeed = 4;
        ballPower = 110;
        transNum = 4;
        
      }
      if (powerBar.aniState == 1){
        //if ballpower is mid-high, go to 2/3 playable area quickly
           ball.hspeed = 3;
           ballPower = 200;
           transNum = 9;
      }
      if (powerBar.aniState == 2){
        //if ballpower is mid, go to 1/3 foot line of playable area
          ball.hspeed = 3;
          ballPower = 163;
          transNum = 8;
      }
        if (powerBar.aniState == 3){
         //if ballpower is mid-low, go to setter
         ball.hspeed = 2;
         ballPower = 135;
         transNum = 10;
      }
       if (powerBar.aniState == 4){
        //hits the net
         ball.hspeed = 1;
         ballPower = 110;
         transNum = 15;
      }
        playSoundB(songs[1].data,songs[1].length,0);
        goToGame();
    }
  }
        
void serve2() {

     drawPowerBar();
     updatePowerBar();
     hideOthers();
     waitForVBlank();
     DMANow(3, &shadowOAM, OAM, 512 );

    if(BUTTON_PRESSED(BUTTON_UP)) {
      goToServe1();
     }
    if(BUTTON_PRESSED(BUTTON_DOWN)) {
       goToServe3();
     }
    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
      goToServe5();
    }
    if(BUTTON_PRESSED(BUTTON_LEFT)) {
       goToServe4();
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
      if (powerBar.aniState == 0){
        //if ballpower is highest, go to back of playable area
        ball.hspeed = 4;
        ballPower = 216;
        transNum = 8;
      
      }
      if (powerBar.aniState == 1){
        //if ballpower is mid-high, go to 2/3 of playable area
        ball.hspeed = 3;
        ballPower = 200;
        transNum = 9;
      }
      if (powerBar.aniState == 2){
        //if ballpower is mid, go to 1/3 of playable areaa
        ball.hspeed = 2;
        ballPower = 185;
        transNum = 13;
      }
        if (powerBar.aniState == 3){
         //if ballpower is mid-low, go to 10 foot line
         ball.hspeed = 2;
         ballPower = 172;
         transNum = 15;
      }
       if (powerBar.aniState == 4){
         //if ballpower is low, go to 10-foot line
         ball.hspeed = 1;
         ballPower = 155;
         transNum = 22;
      }
       playSoundB(songs[1].data,songs[1].length,0);
         goToGame();
    }
 
}


void serve3() {

     drawPowerBar();
     updatePowerBar();
     hideOthers();
     waitForVBlank();
     DMANow(3, &shadowOAM, OAM, 512 );

    if(BUTTON_PRESSED(BUTTON_DOWN)) {
     goToServe1();
    }
    if(BUTTON_PRESSED(BUTTON_UP)) {
     goToServe2();
    }
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        if (powerBar.aniState == 0){
        //if ballpower is highest, go out, opp team scores
         ball.hspeed = 4;
        ballPower = 238;
        transNum = 9;
      }
      if (powerBar.aniState == 1){
        //if ballpower is mid-high, go to back of playable area
         ball.hspeed = 3;
        ballPower = 220;
        transNum = 11;
      }
      if (powerBar.aniState == 2){
        //if ballpower is mid, go to 2/3 of playable areaa
         ball.hspeed = 2;
        ballPower = 205;
        transNum = 15;
      }
        if (powerBar.aniState == 3){
         //if ballpower is mid-low, go to 1/3 playable area
          ball.hspeed = 2;
        ballPower = 190;
        transNum = 14;
      }
       if (powerBar.aniState == 4){
         //if ballpower is low, go to 10-foot line
          ball.hspeed = 1;
        ballPower = 166;
        transNum = 24;
      }
         playSoundB(songs[1].data,songs[1].length,0);
         goToGame();
    }
}

void serve4() {

     drawPowerBar();
     updatePowerBar();
     hideOthers();
     waitForVBlank();
     DMANow(3, &shadowOAM, OAM, 512 );

    if(BUTTON_PRESSED(BUTTON_RIGHT)) {
        goToServe2();
    }      
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
       if (powerBar.aniState == 0){
        //if ballpower is highest, go to bottom back corner of playable area
          ball.hspeed = 4;
        ballPower = 205;
        ball.vspeed = 1;
        transNum = 8;
      }
      if (powerBar.aniState == 1){
        //if ballpower is mid-high, go to bottom back 2/3 of playable area
          ball.hspeed = 4;
        ballPower = 180;
        ball.vspeed = 1;
        transNum = 7;
      }
      if (powerBar.aniState == 2){
        //if ballpower is mid, go to bottom back 1/3 of playable areaa
          ball.hspeed = 3;
        ballPower = 150;
        ball.vspeed = 1;
        transNum = 7;
      }
        if (powerBar.aniState == 3){
         //out
           ball.hspeed = 2;
        ballPower = 136;
        ball.vspeed = 1;
        transNum = 9;
      }
       if (powerBar.aniState == 4){
         //out
           ball.hspeed = 1;
        ballPower = 76;
        ball.vspeed = 1;
        transNum = 9;
      }
        playSoundB(songs[1].data,songs[1].length,0);
         goToGame();
     
    }

}

void serve5() {

     drawPowerBar();
     updatePowerBar();
     hideOthers();
     waitForVBlank();
     DMANow(3, &shadowOAM, OAM, 512 );

    if(BUTTON_PRESSED(BUTTON_LEFT)) {
        goToServe2();
    }   
    if(BUTTON_PRESSED(BUTTON_SELECT)) {
        if (powerBar.aniState == 0){
        //if ballpower is highest, go to back of playable area
         ball.hspeed = 4;
        ballPower = 205;
        ball.vspeed = -1;
        transNum = 8;
      }
      if (powerBar.aniState == 1){
        //if ballpower is mid-high, go to 2/3 of playable area
         ball.hspeed = 4;
        ballPower = 180;
        ball.vspeed = -1;
        transNum = 7;
      }
      if (powerBar.aniState == 2){
        //if ballpower is mid, go to 1/3 of playable areaa
        ball.hspeed = 3;
        ballPower = 150;
        ball.vspeed = -1;
        transNum = 7;
      }
        if (powerBar.aniState == 3){
         //out
          ball.hspeed = 2;
        ballPower = 136;
        ball.vspeed = -1;
        transNum = 9;
      }
       if (powerBar.aniState == 4){
         //out
          ball.hspeed = 1;
        ballPower = 76;
        ball.vspeed = -1;
        transNum = 9;
      }
       playSoundB(songs[1].data,songs[1].length,0);
         goToGame();
        
    }
 
}

// Sets up the pause state
void goToPause() {
    state = PAUSE;

    REG_DISPCTL = MODE0 | BG0_ENABLE; // Disable sprites while in menus

    // Setup pause background
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;

    DMANow(3, pausePal, PALETTE, pausePalLen / 2);
    DMANow(3, pauseTiles, &CHARBLOCK[0], pauseTilesLen / 2);
    DMANow(3, pauseMap, &SCREENBLOCK[31], pauseMapLen / 2);
}

// Runs every frame of the pause state
void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

// Sets up the win state
void goToWin() {
    state = WIN;

    REG_DISPCTL = MODE0 | BG0_ENABLE; // Disable sprites while in menus

    // Setup win background
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;
    DMANow(3, winPal, PALETTE, winPalLen / 2);
    DMANow(3, winTiles, &CHARBLOCK[0], winTilesLen / 2);
    DMANow(3, winMap, &SCREENBLOCK[31], winMapLen / 2);
}

// Runs every frame of the win state
void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        score = 0;
        oppScore = 0;
        point = 0;
        goToStart();
    }
}

// Sets up the lose state
void goToLose() {
    state = LOSE;

    REG_DISPCTL = MODE0 | BG0_ENABLE; // Disable sprites while in menus

    // Setup lose background
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(31) | BG_4BPP | BG_SIZE_SMALL;
    
    DMANow(3, losePal, PALETTE, losePalLen / 2);
    DMANow(3, loseTiles, &CHARBLOCK[0], loseTilesLen / 2);
    DMANow(3, loseMap, &SCREENBLOCK[31], loseMapLen / 2);
}

// Runs every frame of the lose state
void lose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        score = 0;
        oppScore = 0;
        goToStart();
    }
}

