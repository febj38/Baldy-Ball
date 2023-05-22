#include "game.h"
#include "gba.h"
#include "collisionMap.h"
#include "print.h"


extern void goToLose();
extern void goToWin();
extern ANISPRITE baldy;
extern ANISPRITE opp;
extern ANISPRITE setterR;
extern ANISPRITE setterL;
extern ANISPRITE ball;
extern ANISPRITE scor;
extern ANISPRITE ones;
extern int ballPower;
extern ANISPRITE powerBar;
extern int seed;
extern int firstserve;
extern int servePower;
extern int x;
extern int y;
extern int point;


unsigned char *collisionMap = collisionMapBitmap;

enum { SPRITEFRONT, SPRITEBACK, SPRITERIGHT, SPRITELEFT, SPRITEIDLE};
enum { OPPFRONT, OPPBACK, OPPRIGHT, OPPLEFT, OPPIDLE};
enum {LOW, MIDLOW, MID, MIDHI, HI};

int score = 0;
int powerProg = 36;
int oppScore = 0;
int max = 5;
int set = 0;
int hit = 0;
int hitN = 0;
int hity = 0;
int one = 0;
int vBallPower = 0;
int repeat = 0;
int returned = 0;
int returnedN = 0;
int sety = 0;
int shorty = 0;
int shortyN = 0;
int urturn = 0;
int urtur = 0;
int urturny = 0;
int transNum = 7;
int serving = 1;
int setN = 0;
int setyN = 0;
int spike = 0;
 int vOff = 0;
 int hOff = 0;
 int color = 0;
 int cheat = 0;
int x = 0;
int animatePower = 1;
 




void initGame() {
 baldy.width = 5;
    baldy.height = 5;
    baldy.hspeed = 2;
    baldy.vspeed = 2;
    baldy.worldCol = 5;
    baldy.worldRow = 74;
    baldy.aniCounter = 0;
    baldy.curFrame = 0;
    baldy.numFrames = 3;
    baldy.aniState = SPRITEFRONT;

    opp.width = 5;
    opp.height = 5;
    opp.hspeed = 0;
    opp.left = 0;
    opp.right = 0;
    opp.down = 0;
    opp.up = 0;
    opp.vspeed = 0;
    opp.worldCol = 185;
    opp.worldRow = 80;
    opp.aniCounter = 0;
    opp.curFrame = 0;
    opp.numFrames = 3;
    opp.aniState = SPRITEFRONT;
    
    setterL.width = 5;
    setterL.height = 5;
    setterL.hspeed = 1;
    setterL.vspeed = 1;
    setterL.worldCol = 90;
    setterL.worldRow = 80;
    setterL.aniCounter = 0;
    setterL.curFrame = 0;
    setterL.numFrames = 3;
    setterL.aniState = SPRITEFRONT;

    setterR.width = 5;
    setterR.height = 5;
    setterR.hspeed = 1;
    setterR.vspeed = 1;
    setterR.worldCol = 135;
    setterR.worldRow = 80;
    setterR.aniCounter = 0;
    setterR.curFrame = 0;
    setterR.numFrames = 3;
    setterR.aniState = SPRITEFRONT;

    ball.width = 5;
    ball.height = 5;
    ball.hspeed = 0;
    ball.vspeed = 0;
    ball.worldCol = 14;
    ball.worldRow = 79;
    ball.aniCounter = 0;
    ball.curFrame = 0;
    ball.numFrames = 7;

    ones.worldCol = 80;
    ones.worldRow = 144;
    ones.width = 3;
    ones.height = 3;
    ones.aniCounter = 0;
    ones.curFrame = 0;

    powerBar.worldCol = 83;
    powerBar.worldRow = 67;
    powerBar.width = 9;
    powerBar.height = 4; 
    powerBar.aniCounter = 0;
    powerBar.curFrame = 0;
    powerBar.mini = 0;
    powerBar.aniState = LOW;
    powerBar.numFrames = 5;

    scor.worldCol = 7;
    scor.worldRow = 144;
    scor.width = 9;
    scor.height = 4; 


    ballPower = 0;
    servePower = 0;
    transNum = 300;
    serving = 1;
    set = 0;
    setN = 0;
    sety = 0;
    setyN = 0;
    shorty = 0;
    hity = 0;
    hit = 0;
    one = 0;
    shorty = 0;
    shortyN = 0;
    urturn = 0;
    urtur = 0;
    returnedN = 0;
    urturny = 0;
    spike = 0;
    vOff = 0;
    hOff = 0;
    color = 0;
    animatePower = 1;
   cheat = 0;
   x = 0;
  point = 0;
   
}

void updateGame() {
updateBall();
//updateOpp();
updateSetterL();
updatebaldy();
updateSetterR();
updateBaldyCol();
}

void updatebaldy() {

    if (!(baldy.aniState == SPRITEIDLE)) {
        baldy.prevAniState = baldy.aniState;
       baldy.aniState = SPRITEIDLE;
        }
        
        if(baldy.aniCounter % 15 == 0) {
          baldy.curFrame = (baldy.curFrame + 1) % baldy.numFrames;
         baldy.aniCounter++;
		}
        

        if(BUTTON_HELD(BUTTON_UP)) {
            if (baldy.worldRow > 0 && collisionCheck(collisionMap, MAPWIDTH, baldy.worldCol + 1, baldy.worldRow - baldy.vspeed) 
            && collisionCheck(collisionMap, MAPWIDTH, baldy.worldCol + baldy.width - 1 ,baldy.worldRow - baldy.vspeed)) {
            baldy.worldRow -= baldy.vspeed + x;
            }
        }

        if(BUTTON_HELD(BUTTON_DOWN)) {
            if (baldy.worldRow + baldy.height < MAPHEIGHT && collisionCheck(collisionMap, MAPWIDTH, baldy.worldCol + 1,baldy.worldRow + baldy.height - 1 + baldy.vspeed) 
            && collisionCheck(collisionMap, MAPWIDTH,  baldy.worldCol + baldy.width - 1, baldy.worldRow + baldy.height - 1 + baldy.vspeed)) {
            baldy.worldRow += baldy.vspeed + x;
            }
        }
        if(BUTTON_HELD(BUTTON_LEFT)) {
             if (baldy.worldCol > 0 && collisionCheck(collisionMap, MAPWIDTH, baldy.worldCol + 1 - baldy.hspeed, baldy.worldRow) 
             && collisionCheck(collisionMap, MAPWIDTH, baldy.worldCol + 1 - baldy.hspeed , baldy.worldRow + baldy.height - 1)) {
             baldy.worldCol -= baldy.hspeed + x;
             }
        }
        if(BUTTON_HELD(BUTTON_RIGHT)) {
              if (baldy.worldCol + baldy.width < MAPWIDTH && collisionCheck(collisionMap, MAPWIDTH, baldy.worldCol + baldy.width, baldy.worldRow) 
              && collisionCheck(collisionMap, MAPWIDTH, baldy.worldCol + baldy.width, baldy.worldRow + baldy.height - baldy.hspeed)) {
              baldy.worldCol += baldy.hspeed + x;
              mgba_printf("why");
              mgba_printf("hspeed: (%d)", baldy.hspeed);
        }
        }

        animatePlayer();
       if (baldy.aniState == SPRITEIDLE) {
              baldy.curFrame = 0;
            baldy.aniState = SPRITERIGHT; 
       } else {
           baldy.aniCounter++;
        }
   }

   void drawBaldy() {
        // TODO 1.1: Set the character's row and col properly
        shadowOAM[0].attr0 = (ROWMASK & (baldy.worldRow)) | ATTR0_SQUARE;
        shadowOAM[0].attr1 = (COLMASK & (baldy.worldCol)) | ATTR1_SMALL;
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(baldy.aniState * 2, baldy.curFrame * 2 + 8);
    }

void updateBaldyCol() {

if(cheat == 7) {
    animatePower = 0;
    powerBar.aniState = 0;
     x = 1;
     SPRITEPALETTE[4] = SPRITEPALETTE[5];
}


    if(BUTTON_PRESSED(BUTTON_L)) {
        color++;
    }
    if(color == 0) {
        SPRITEPALETTE[4] = COLOR(31, 26, 23);
    }
        if(color == 1){
        SPRITEPALETTE[4] = SPRITEPALETTE[12];
        }
        if(color == 2){
            SPRITEPALETTE[4] = SPRITEPALETTE[13];
        }
        if(color == 3){
            SPRITEPALETTE[4] = SPRITEPALETTE[15];
        }
        if(color == 4){
            SPRITEPALETTE[4] = SPRITEPALETTE[14];
        }
        if(color == 5){
            SPRITEPALETTE[4] = SPRITEPALETTE[1];
        }
        if(color == 6) {
        SPRITEPALETTE[4] = COLOR(31, 26, 23);
          color = 0;
          cheat++;
        }

    }



void drawOpp() {
        // TODO 1.1: Set the character's row and col properly
        shadowOAM[1].attr0 = (ROWMASK & (opp.worldRow)) | ATTR0_SQUARE;
        shadowOAM[1].attr1 = (COLMASK & (opp.worldCol)) | ATTR1_SMALL;
        shadowOAM[1].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(opp.aniState * 2 + 10, baldy.curFrame * 2 + 8);
    }

void updateOpp() {

if(ball.worldCol > 124) {

if(opp.worldCol < ball.worldCol) {
    opp.hspeed = 2 - x  + y;
} else if (opp.worldCol > ball.worldCol && abs(opp.worldCol - ball.worldCol) > 2) {
    opp.hspeed = -2  + x - y;
}
else {
    opp.hspeed = 0;
}

if(opp.worldRow < ball.worldRow) {
    opp.vspeed = 2 - x + y;
} else if (opp.worldRow > ball.worldRow) {
   opp.vspeed = -2 + x - y;
}
else {
    opp.vspeed = 0;
}

opp.worldRow += opp.vspeed;
opp.worldCol += opp.hspeed;

 if (opp.aniState == OPPIDLE) {
              opp.curFrame = 0;
            opp.aniState = OPPFRONT; 
       } else {
           opp.aniCounter++;
        }
 animateOpp();
}

}


 


void updateSetterR() {
    setterR.worldRow = opp.worldRow;
}

void updateSetterL() {
 
    setterL.worldRow = ball.worldRow;
}

void updateScore() {
 
  ball.worldCol = 14;
  ball.worldRow = 79;
  ball.hspeed = 0;
  ball.vspeed = 0;
  opp.hspeed = 0;
  opp.vspeed = 0;
  setterR.worldCol = 135;
  setterR.worldRow = 80;
  setterL.worldCol = 90;
    setterL.worldRow = 80;
    opp.worldCol = 185;
    opp.worldRow = 80;
     baldy.worldCol = 3;
    baldy.worldRow = 74;
    baldy.hspeed = 2;
    baldy.vspeed = 2;
    set = 0;
    setN = 0;
    sety = 0;
    setyN = 0;
    shorty = 0;
    hity = 0;
    hit = 0;
    hitN = 0;
    one =  0;
    returned = 0;
    returnedN = 0;
    ballPower = 0;
    servePower = 0;
    transNum = 300;
    ball.aniState = 0;
    serving = 1;
    shorty = 0;
    shortyN = 0;
    urturn = 0;
    urtur = 0;
    urturny = 0;
    spike = 0;
   cheat = 0;
   x = 0;
   if (point > 1) {
    y = 1;
   }
   animatePower = 1;
 SPRITEPALETTE[4] = COLOR(31, 26, 23);
    seed++;
    drawScore();
    drawOppScore();
 }



void updateBall() {
if(serving == 1) {
       if(ball.worldCol < ballPower) {
               ball.worldCol += ball.hspeed;
                ball.worldRow += ball.vspeed;
                updateOpp();
                mgba_printf("vspeed: (%d)" ,ball.vspeed);
                mgba_printf("hspeed: (%d)" , ball.hspeed);
                mgba_printf("servin hard af");
                animateBall();
        }
        one = 1;
}
 if(serving && ball.worldCol > opp.worldCol + 3) {
    score++;
    updateScore();
 }
 

    if(one == 1 && ball.worldCol > 140 && 
    (collision(opp.worldCol - opp.hspeed , opp.worldRow , opp.width , opp.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(opp.worldCol - opp.hspeed , opp.worldRow + opp.height - 1, opp.width , opp.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(opp.worldCol, opp.worldRow , opp.width , opp.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height)) ) {
        serving = 0;
        set = 1;
        spike = 0;
        opp.vspeed = 0;
        opp.hspeed = 0;
        ball.hspeed *= -1;
        one = 0;
        setN = 1;
        ball.aniState = 1;
        transNum = 2;
        mgba_printf("entered");
    }
   
    if(set == 1 && ball.worldCol > setterR.worldCol) {
               ball.worldCol += ball.hspeed;
        mgba_printf("incremented");
            animateBall();
    }
   

if(setN == 1 && (collision(setterR.worldCol + setterR.width - 1 + setterR.hspeed, setterR.worldRow , setterR.width , setterR.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(setterR.worldCol + setterR.width - 1 , setterR.worldRow + setterR.height - 1, setterR.width , setterR.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(setterR.worldCol , setterR.worldRow , setterR.width , setterR.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height))) {
    ball.hspeed *= -1;
         set = 0;
        setN = 0;
         hit = 1;
        hitN = 1;
       ball.aniState = 1;
       transNum = 2;
  }

  if(hit == 1 && ball.worldCol < opp.worldCol) {
           ball.worldCol += ball.hspeed;
            animateBall();
  }


if(hitN == 1 &&  (collision(opp.worldCol - opp.hspeed , opp.worldRow , opp.width , opp.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(opp.worldCol - opp.hspeed , opp.worldRow + opp.height - 1, opp.width , opp.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(opp.worldCol , opp.worldRow , opp.width , opp.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) )) {
        
        ball.hspeed = -(rand() % 2) - 2;
        ball.vspeed = (rand() % 1) + 1/2;
        ballPower = (rand () % 14) + 23;
        if(ballPower > 79) {
        shorty = 1;
        } else {
        returned = 1;
        }
        transNum = 7;

        hit = 0;
        hitN = 0;
        setyN = 1;
        ball.aniState = 1;
    }

     if(setyN && ball.worldCol > ballPower) {
             ball.worldCol += ball.hspeed;
             ball.worldRow += ball.vspeed;
                mgba_printf("third touch");
              animateBall();
        }
        if(setyN && ball.worldCol < baldy.worldCol - 2 && ball.worldRow > 14) {
             oppScore++;
             updateScore();
        }
         if( setyN && ball.worldRow <= 13) {
            score++; 
            updateScore();
        }

     if(shorty && (collision(setterL.worldCol - setterL.hspeed , setterL.worldRow , setterL.width , setterL.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(setterL.worldCol - setterL.hspeed , setterL.worldRow + setterL.height - 1 , setterL.width , setterL.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(setterL.worldCol , setterL.worldRow , setterL.width , setterL.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height))) {
        setyN = 0;
        shorty = 0;
        shortyN = 1;
        opp.vspeed = 0;
        opp.hspeed = 0;
        urtur = 1;
        ball.vspeed = 0;
        ball.aniState = 1;
        ball.hspeed = -1;
        transNum = 7;
    }
    if(shortyN && ball.worldCol > baldy.worldCol) {
        ball.worldCol += ball.hspeed;
        animateBall();
    }
//subject to change

      if(returned && (collision(baldy.worldCol + baldy.width - 1 + baldy.hspeed, baldy.worldRow, baldy.width -1, baldy.height - 1, 
    ball.worldCol, ball.worldRow, ball.width, ball.height) || collision(baldy.worldCol +  baldy.width - 1, baldy.worldRow + baldy.height - 1, baldy.width -1, baldy.height - 1, 
    ball.worldCol, ball.worldRow, ball.width, ball.height) || collision(baldy.worldCol, baldy.worldRow , baldy.width , baldy.height, 
    ball.worldCol, ball.worldRow, ball.width, ball.height)) && BUTTON_PRESSED(BUTTON_A)) {
        setyN = 0;
        returned = 0;
       opp.vspeed = 0;
        opp.hspeed = 0;
        urtur = 1;
        shorty = 0;
        shortyN = 0;
       returnedN = 1;
       ball.aniState = 1;
        ball.hspeed = 1;
        ball.vspeed = 0;
        transNum = 7;
    }

     if(returnedN == 1 && ball.worldCol < setterL.worldCol) {
        ball.worldCol += ball.hspeed;
       animateBall();
    }

    if(urtur == 1 && (collision(setterL.worldCol - setterL.hspeed , setterL.worldRow , setterL.width , setterL.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(setterL.worldCol - setterL.hspeed , setterL.worldRow + setterL.height - 1 , setterL.width , setterL.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height) || collision(setterL.worldCol , setterL.worldRow , setterL.width , setterL.height , ball.worldCol, ball.worldRow
    ,ball.width, ball.height))) {
        urtur = 0;
       urturn = 1;
        urturny = 1;
        ball.hspeed = -1;
        ball.vspeed = 0;
       transNum = 7;
         shortyN = 0;
         ball.aniState = 1;
       returnedN = 0;
       mgba_printf("here?");
    }

   if(urturn == 1 && ball.worldCol > baldy.worldCol) {
       ball.worldCol += ball.hspeed;
        animateBall();
    }
   if(urturn == 1 && ball.worldCol < baldy.worldCol - 2) {
        oppScore++;
        updateScore();
   }

//hitting in certain directions
    if(urturny && BUTTON_PRESSED(BUTTON_A) && (collision(baldy.worldCol + baldy.width - 1 + baldy.hspeed, baldy.worldRow, baldy.width -1, baldy.height - 1, 
    ball.worldCol, ball.worldRow, ball.width, ball.height) || collision(baldy.worldCol +  baldy.width - 1, baldy.worldRow + baldy.height - 1, baldy.width -1, baldy.height - 1, 
    ball.worldCol, ball.worldRow, ball.width, ball.height) || collision(baldy.worldCol , baldy.worldRow, baldy.width , baldy.height , 
    ball.worldCol, ball.worldRow, ball.width, ball.height))) {

        ball.vspeed = (rand() % 2) + 1;
        urturn = 0;
        urturny = 0;
        one = 1;

        if(color == 0){
            ball.hspeed = 1;
            ballPower = 145;
        }
        if(color == 1) {
            ball.hspeed = 2;
            ballPower = 164;
        }
          if(color == 2) {
            ball.hspeed = 2;
            ballPower = 170;
        }
          if(color == 3) {
            ball.hspeed = 2;
            ballPower = 185;
        }
          if(color == 4) {
            ball.hspeed = 3;
            ballPower = 200;
        }
        if(color == 5 ) {
            ball.hspeed = 4;
            ballPower = 215;
        }
    
        ball.aniState = 1;
        spike = 1;
    }

     if(spike == 1 && ball.worldCol < ballPower) {
        ball.worldCol += ball.hspeed;
        ball.worldRow += ball.vspeed;
        updateOpp();
       animateBall();
       }

       if( spike && ball.worldCol > opp.worldCol + 1) {
        score++;
        updateScore();
       }
}

int tileIsFilled(int col, int row) {
    return SCREENBLOCK[20].tilemap[OFFSET(col,row,32)];
}

void drawScore() {
    int i = 0;
    int temp = score;
     while(temp > 0 || i == 0) {
         shadowOAM[5 + i].attr0 = (ones.worldRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
         shadowOAM[5 + i].attr1 = (ones.worldCol & COLMASK) | ATTR1_SMALL;
         shadowOAM[5 + i].attr2 = ATTR2_TILEID(2*(temp % 10), 0) | ATTR2_PALROW(0);
         temp /= 10;
         i++;
     }
}

void drawPowerBar() {

    for(int x = 0; x < 5; x++) {
        shadowOAM[26 + x].attr0 = (powerBar.worldRow) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[26 + x].attr1 = (powerBar.worldCol + (x*15)) | ATTR1_SMALL;
        shadowOAM[26 + x].attr2 = ATTR2_TILEID(powerBar.aniState * 2 + (x*2), powerBar.curFrame * 2  + 4) | ATTR2_PALROW(0);
    } 
}

void updatePowerBar() {
    if(animatePower) {
    powerBar.aniCounter++;
        if(powerBar.aniCounter % 3 == 0) {
            if(powerBar.aniState < powerBar.numFrames) {
               powerBar.aniState++;
            } else {
              powerBar.aniState = 0;
            }
        }
    }
    }

void animateBall() {
    ball.aniCounter++;
        if(ball.aniCounter % transNum == 0) {
            if(ball.aniState < ball.numFrames - 1) {
               ball.aniState++;
            } else {
              ball.aniState = 0;
            }
        }
    }

void hidePowerBar() {
for(int x = 0; x < 5; x++) {
    shadowOAM[26 + x].attr0 = ATTR0_HIDE;
}

}

void animatePlayer() {

    // Set previous state to current state
    baldy.prevAniState = baldy.aniState;
    baldy.aniState = SPRITEIDLE;

    // Change the animation frame every 20 frames of gameplay
    if (baldy.aniCounter % 20 == 0) {
        baldy.curFrame = (baldy.curFrame + 1) % baldy.numFrames;
    }

    // Control movement and change animation state
    if (BUTTON_HELD(BUTTON_UP))
        baldy.aniState = SPRITEBACK;
    if (BUTTON_HELD(BUTTON_DOWN))
        baldy.aniState = SPRITEFRONT;
    if (BUTTON_HELD(BUTTON_LEFT))
        baldy.aniState = SPRITELEFT;
    if (BUTTON_HELD(BUTTON_RIGHT))
        baldy.aniState = SPRITERIGHT;

    // If baldy's aniState is idle, frame is link standing
    if (baldy.aniState == SPRITEIDLE) {
        baldy.curFrame = 0;
        baldy.aniCounter = 0;
        baldy.aniState = baldy.prevAniState;
    } else {
        baldy.aniCounter++;
    }
}

void animateOpp() {

    // Set previous state to current state
    opp.prevAniState = opp.aniState;
    opp.aniState = OPPIDLE;

    // Change the animation frame every 20 frames of gameplay
    if (opp.aniCounter % 20 == 0) {
        opp.curFrame = (opp.curFrame + 1) % opp.numFrames;
    }

    // Control movement and change animation state
    if (opp.vspeed == -2 )
        opp.aniState = OPPBACK;
    if (opp.vspeed == 2 )
        opp.aniState = OPPFRONT;
    if (opp.hspeed == -2 )
        opp.aniState = OPPLEFT;
    if (opp.hspeed == 2  )
        opp.aniState = OPPRIGHT;

    // If baldy's aniState is idle, frame is opp standing
    if (opp.aniState == OPPIDLE) {
        opp.curFrame = 0;
        opp.aniCounter = 0;
        opp.aniState = opp.prevAniState;
    } else {
        opp.aniCounter++;
    }
}


void hideOthers() {
for(int x = 0; x < 5; x++) {
    shadowOAM[x].attr0 = ATTR0_HIDE;
}
shadowOAM[32].attr0 = ATTR0_HIDE;
}

void drawOppScore() {
    int i = 0;
    int temp = oppScore;
         while(temp > 0 || i == 0) {
         shadowOAM[15 + i].attr0 = (144 & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
         shadowOAM[15 + i].attr1 = (149 & COLMASK) | ATTR1_SMALL;
         shadowOAM[15 + i].attr2 = ATTR2_TILEID(2*(temp % 10), 0) | ATTR2_PALROW(0);
         temp /= 10;
         i++;
     }
}

void drawGame() {
  drawBaldy();
  drawOpp();
  DMANow(3, &shadowOAM, OAM, 512);
}

