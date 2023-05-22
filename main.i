# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 12 "main.c"
# 1 "gba.h" 1





typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;





int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
int collisionCheck(unsigned char *collisionMap, int mapWidth, int col, int row);
# 42 "gba.h"
extern volatile unsigned short *videoBuffer;
# 67 "gba.h"
void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);
void waitForVBlank();





void flipPage();
void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);
# 119 "gba.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;
# 152 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 163 "gba.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 203 "gba.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 260 "gba.h"
void hideSprites();






typedef struct {
    int worldRow;
    int worldCol;
    int vspeed;
    int hspeed;
    int width;
    int height;
    int speed;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int mini;
    int up;
    int down;
    int left;
    int right;
} ANISPRITE;
# 324 "gba.h"
typedef void (*ihp)(void);
# 13 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 14 "main.c" 2
# 1 "pause.h" 1
# 22 "pause.h"
extern const unsigned short pauseTiles[208];


extern const unsigned short pauseMap[1024];


extern const unsigned short pausePal[256];
# 15 "main.c" 2
# 1 "win.h" 1
# 22 "win.h"
extern const unsigned short winTiles[3504];


extern const unsigned short winMap[1024];


extern const unsigned short winPal[256];
# 16 "main.c" 2
# 1 "vballmain.h" 1
# 22 "vballmain.h"
extern const unsigned short vballmainTiles[3872];


extern const unsigned short vballmainMap[1024];


extern const unsigned short vballmainPal[256];
# 17 "main.c" 2
# 1 "lose.h" 1
# 22 "lose.h"
extern const unsigned short loseTiles[6144];


extern const unsigned short loseMap[1024];


extern const unsigned short losePal[256];
# 18 "main.c" 2
# 1 "2dVballCourt.h" 1
# 22 "2dVballCourt.h"
extern const unsigned short _dVballCourtTiles[7680];


extern const unsigned short _dVballCourtMap[1024];


extern const unsigned short _dVballCourtPal[256];
# 19 "main.c" 2
# 1 "baldy.h" 1
# 21 "baldy.h"
extern const unsigned short baldyTiles[16384];


extern const unsigned short baldyPal[256];
# 20 "main.c" 2
# 1 "game.h" 1

void drawGame();
void hideScore();
void drawScore();
void drawOppScore();
void updateGame();
void updatebaldy();
void updateOpp();
void updateSetterR();
void updateSetterL();
void updateBall();
void updateBall2();
void updatePowerBar();
void hidePowerBar();
void drawPowerBar();
void hideOthers();
void updateScore();
void animatePlayer();
void animateOpp();
void drawBaldy();
void drawOpp();

void initGame();




int rand();
int tileIsFilled();

extern int hOff;
extern int vOff;
# 21 "main.c" 2
# 1 "serve1.h" 1
# 22 "serve1.h"
extern const unsigned short serve1Tiles[1344];


extern const unsigned short serve1Map[1024];


extern const unsigned short serve1Pal[256];
# 22 "main.c" 2
# 1 "serve2.h" 1
# 22 "serve2.h"
extern const unsigned short serve2Tiles[1344];


extern const unsigned short serve2Map[1024];


extern const unsigned short serve2Pal[256];
# 23 "main.c" 2
# 1 "serve3.h" 1
# 22 "serve3.h"
extern const unsigned short serve3Tiles[1344];


extern const unsigned short serve3Map[1024];


extern const unsigned short serve3Pal[256];
# 24 "main.c" 2
# 1 "serve4.h" 1
# 22 "serve4.h"
extern const unsigned short serve4Tiles[1344];


extern const unsigned short serve4Map[1024];


extern const unsigned short serve4Pal[256];
# 25 "main.c" 2
# 1 "serve5.h" 1
# 22 "serve5.h"
extern const unsigned short serve5Tiles[1344];


extern const unsigned short serve5Map[1024];


extern const unsigned short serve5Pal[256];
# 26 "main.c" 2
# 1 "sound.h" 1
void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 49 "sound.h"
typedef struct{
    const signed char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;

SOUND soundA;
SOUND soundB;
# 27 "main.c" 2
# 1 "wiiSong.h" 1


extern const unsigned int wiiSong_sampleRate;
extern const unsigned int wiiSong_length;
extern const signed char wiiSong_data[];
# 28 "main.c" 2
# 1 "slap.h" 1


extern const unsigned int slap_sampleRate;
extern const unsigned int slap_length;
extern const signed char slap_data[];
# 29 "main.c" 2
# 1 "vballmainPar1.h" 1
# 22 "vballmainPar1.h"
extern const unsigned short vballmainPar1Tiles[768];


extern const unsigned short vballmainPar1Map[1024];


extern const unsigned short vballmainPar1Pal[256];
# 30 "main.c" 2
# 1 "baldyPar2.h" 1
# 22 "baldyPar2.h"
extern const unsigned short baldyPar2Tiles[400];


extern const unsigned short baldyPar2Map[1024];


extern const unsigned short baldyPar2Pal[256];
# 31 "main.c" 2
# 1 "controls.h" 1
# 22 "controls.h"
extern const unsigned short controlsTiles[4688];


extern const unsigned short controlsMap[1024];


extern const unsigned short controlsPal[256];
# 32 "main.c" 2
# 1 "instructions1.h" 1
# 22 "instructions1.h"
extern const unsigned short instructions1Tiles[5488];


extern const unsigned short instructions1Map[1024];


extern const unsigned short instructions1Pal[256];
# 33 "main.c" 2
# 1 "instructions2.h" 1
# 22 "instructions2.h"
extern const unsigned short instructions2Tiles[5984];


extern const unsigned short instructions2Map[1024];


extern const unsigned short instructions2Pal[256];
# 34 "main.c" 2
# 1 "instructions3.h" 1
# 22 "instructions3.h"
extern const unsigned short instructions3Tiles[6944];


extern const unsigned short instructions3Map[1024];


extern const unsigned short instructions3Pal[256];
# 35 "main.c" 2


void initialize();


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

int servePower = 0;
int point = 0;
int oppSet = 0;



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


OBJ_ATTR shadowOAM[128];
extern int transNum;

typedef struct {

    char* title;
    unsigned short color;

    unsigned int sampleRate;
    unsigned int length;
    signed char* data;

} SONG;

SONG songs[2];

int main() {

    initialize();

    while (1)
    {

        shadowOAM[2].attr0 = (setterL.worldRow & 0xFF) | (0 << 13) | (0 << 14);
        shadowOAM[2].attr1 = (setterL.worldCol & 0x1FF) | (1 << 14);
        shadowOAM[2].attr2 = ((setterL.curFrame *2 + 18)*32+(setterL.aniState *2)) | ((0)<<12);

        shadowOAM[3].attr0 = (setterR.worldRow & 0xFF) | (0 << 13) | (0 << 14);
        shadowOAM[3].attr1 = (setterR.worldCol & 0x1FF) | (1 << 14);
        shadowOAM[3].attr2 = ((setterR.curFrame *2 + 18)*32+(setterR.aniState *2 + 10)) | ((0)<<12);

        shadowOAM[4].attr0 = (ball.worldRow & 0xFF) | (0 << 13) | (0 << 14);
        shadowOAM[4].attr1 = (ball.worldCol & 0x1FF) | (1 << 14);
        shadowOAM[4].attr2 = ((ball.curFrame * 2 + 6)*32+(ball.aniState * 2)) | ((0)<<12);

        shadowOAM[32].attr0 = (scor.worldRow & 0xFF) | (0 << 13) | (1 << 14);
        shadowOAM[32].attr1 = (scor.worldCol & 0x1FF) | (1 << 14);
        shadowOAM[32].attr2 = ((scor.curFrame * 1 + 27)*32+(scor.aniState * 4)) | ((0)<<12);


        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);



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

    DMANow(3, _dVballCourtTiles, &((charblock *)0x6000000)[1], 15360/2);


    DMANow(3, baldyTiles, &((charblock *)0x6000000)[4], 32768/2 );
    DMANow(3, baldyPal, ((unsigned short *)0x5000200), 512/2);

    hideSprites();

    initGame();

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<14);
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((15)<<8) | (0<<14) | 1;
    buttons = (*(volatile unsigned short *)0x04000130);

    oldButtons = 0;

    goToStart();
}


void goToStart() {
    state = START;

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) | (1<<9) | (1<<10);
     (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<14) | 1;
    (*(volatile unsigned short*)0x400000A) = ((1)<<2) | ((15)<<8) | (0<<14);
    (*(volatile unsigned short*)0x400000C) = ((2)<<2) | ((7)<<8) | (0<<14);

    playSoundA(songs[0].data, songs[0].length, 1);

    DMANow(3, vballmainPal, ((unsigned short *)0x5000000), 512/2);
    DMANow(3, vballmainTiles, &((charblock *)0x6000000)[0], 7744/2);
    DMANow(3, vballmainMap, &((screenblock *)0x6000000)[31], 2048/2 );


    DMANow(3, vballmainPar1Tiles, &((charblock *)0x6000000)[1], 1536/2);
    DMANow(3, vballmainPar1Map, &((screenblock *)0x6000000)[15], 2048/2);


    DMANow(3, baldyPar2Tiles, &((charblock *)0x6000000)[2], 800/2);
    DMANow(3, baldyPar2Map, &((screenblock *)0x6000000)[7], 2048/2);



}

int seed = 0;


void start() {
   (*(volatile unsigned short *)0x04000012) = 0;
   (*(volatile unsigned short *)0x04000010) = 0;
   (*(volatile unsigned short *)0x04000016) = vOff;
   (*(volatile unsigned short *)0x04000014) = hOff;
   (*(volatile unsigned short *)0x04000018) = hOff * -1;
   (*(volatile unsigned short *)0x0400001A) = 128;

    seed++;
    hOff++;


    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        srand(seed);
        goToControls();
    }
}

void controls() {

  if((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
      goToInstruction1();
  }
  if((!(~(oldButtons) & ((1<<1))) && (~buttons & ((1<<1))))){
    goToGame();
  }

}
void goToInstruction1() {
(*(volatile unsigned short *)0x4000000) = 0 | (1<<8);
      hideSprites();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);



    DMANow(3, instructions1Pal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, instructions1Tiles, &((charblock *)0x6000000)[0], 10976/2);

    DMANow(3, instructions1Map, &((screenblock *)0x6000000)[31], 2048/2 );


    state = INSTRUCT1;
}
void instruction1() {
  if((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
      goToInstruction2();
  }
}
void goToInstruction2() {
(*(volatile unsigned short *)0x4000000) = 0 | (1<<8);

    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);



    DMANow(3, instructions2Pal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, instructions2Tiles, &((charblock *)0x6000000)[0], 11968/2);

    DMANow(3, instructions2Map, &((screenblock *)0x6000000)[31], 2048/2 );


    state = INSTRUCT2;
}

void instruction2() {
  if((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
      goToInstruction3();
  }
    if((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
      goToInstruction1();
  }
}
void goToInstruction3() {
 (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);
      hideSprites();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);



    DMANow(3, instructions3Pal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, instructions3Tiles, &((charblock *)0x6000000)[0], 13888/2);

    DMANow(3, instructions3Map, &((screenblock *)0x6000000)[31], 2048/2 );


    state = INSTRUCT3;
}

void instruction3() {
  if((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
      goToGame();
  }
    if((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
      goToInstruction2();
  }
}

void goToControls() {
    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);
      hideSprites();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);



    DMANow(3, controlsPal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, controlsTiles, &((charblock *)0x6000000)[0], 9376/2);

    DMANow(3, controlsMap, &((screenblock *)0x6000000)[31], 2048/2 );


    state = CONTROL;

}


void goToGame() {

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);

    drawScore();
    drawOppScore();
    hidePowerBar();
    mgba_printf("gettin called?");




    DMANow(3, _dVballCourtPal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, _dVballCourtTiles, &((charblock *)0x6000000)[0], 15360/2);

    DMANow(3, _dVballCourtMap, &((screenblock *)0x6000000)[31], 2048/2 );

    state = GAME;
}

void game() {


    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
       goToPause();
    }

    if((!(~(oldButtons) & ((1<<8))) && (~buttons & ((1<<8))))) {
      goToControls();
    }
    if ((collision(baldy.worldCol + baldy.width - 1 + baldy.hspeed, baldy.worldRow, baldy.width -1, baldy.height - 1,
    ball.worldCol, ball.worldRow, ball.width, ball.height) || collision(baldy.worldCol + baldy.width - 1, baldy.worldRow + baldy.height - 1, baldy.width -1, baldy.height - 1,
    ball.worldCol, ball.worldRow, ball.width, ball.height))&& serving && (!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0))))){
        goToServe1();
    }

    if (score == 7) {
      point++;
      if(point == 1) {
      ((screenblock *)0x6000000)[31].tilemap[((18) * (32) + (1))] = 479;
       if (point == 2) {
      ((screenblock *)0x6000000)[31].tilemap[((18) * (32) + (2))] = 479;
      }
       if(point == 3) {
      ((screenblock *)0x6000000)[31].tilemap[((18) * (32) + (3))] = 479;
          goToWin();
      }
    }
    score = 0;
    oppScore = 0;
    }

    if(oppScore == 7) {
      goToLose();

    }

    if((!(~(oldButtons) & ((1<<1))) && (~buttons & ((1<<1))))) {
      updateScore();
    }

    updateGame();
    waitForVBlank();
    drawGame();
}

void goToServe1(){
    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) |(1<<12);
      hideSprites();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);



    DMANow(3, serve1Pal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, serve1Tiles, &((charblock *)0x6000000)[0], 2688/2);

    DMANow(3, serve1Map, &((screenblock *)0x6000000)[31], 2048/2 );


    state = SERVE1;

}

void goToServe2() {
    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) |(1<<12);
     hideSprites();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);



    DMANow(3, serve2Pal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, serve2Tiles, &((charblock *)0x6000000)[0], 2688/2);

    DMANow(3, serve2Map, &((screenblock *)0x6000000)[31], 2048/2 );

    state = SERVE2;
}

void goToServe3(){
    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) |(1<<12);
     hideSprites();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);


    DMANow(3, serve3Pal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, serve3Tiles, &((charblock *)0x6000000)[0], 2688/2);

    DMANow(3, serve3Map, &((screenblock *)0x6000000)[31], 2048/2 );

    state = SERVE3;

}
void goToServe4(){
    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) |(1<<12);
        hideSprites();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);


    DMANow(3, serve4Pal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, serve4Tiles, &((charblock *)0x6000000)[0], 2688/2);

    DMANow(3, serve4Map, &((screenblock *)0x6000000)[31], 2048/2 );

    state = SERVE4;

}

void goToServe5(){
    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8) |(1<<12);
     hideSprites();
    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);


    DMANow(3, serve5Pal, ((unsigned short *)0x5000000), 512/2);

    DMANow(3, serve5Tiles, &((charblock *)0x6000000)[0], 2688/2);


    DMANow(3, serve5Map, &((screenblock *)0x6000000)[31], 2048/2 );
    state = SERVE5;

}

void serve1() {

     drawPowerBar();
     updatePowerBar();
     hideOthers();
     waitForVBlank();
     DMANow(3, &shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512 );


    if((!(~(oldButtons) & ((1<<7))) && (~buttons & ((1<<7))))) {
        goToServe2();
    }
    if((!(~(oldButtons) & ((1<<6))) && (~buttons & ((1<<6))))) {
        goToServe3();
    }
    if((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
      if (powerBar.aniState == 0){

        ball.hspeed = 4;
        ballPower = 110;
        transNum = 4;

      }
      if (powerBar.aniState == 1){

           ball.hspeed = 3;
           ballPower = 200;
           transNum = 9;
      }
      if (powerBar.aniState == 2){

          ball.hspeed = 3;
          ballPower = 163;
          transNum = 8;
      }
        if (powerBar.aniState == 3){

         ball.hspeed = 2;
         ballPower = 135;
         transNum = 10;
      }
       if (powerBar.aniState == 4){

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
     DMANow(3, &shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512 );

    if((!(~(oldButtons) & ((1<<6))) && (~buttons & ((1<<6))))) {
      goToServe1();
     }
    if((!(~(oldButtons) & ((1<<7))) && (~buttons & ((1<<7))))) {
       goToServe3();
     }
    if((!(~(oldButtons) & ((1<<4))) && (~buttons & ((1<<4))))) {
      goToServe5();
    }
    if((!(~(oldButtons) & ((1<<5))) && (~buttons & ((1<<5))))) {
       goToServe4();
    }
    if((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
      if (powerBar.aniState == 0){

        ball.hspeed = 4;
        ballPower = 216;
        transNum = 8;

      }
      if (powerBar.aniState == 1){

        ball.hspeed = 3;
        ballPower = 200;
        transNum = 9;
      }
      if (powerBar.aniState == 2){

        ball.hspeed = 2;
        ballPower = 185;
        transNum = 13;
      }
        if (powerBar.aniState == 3){

         ball.hspeed = 2;
         ballPower = 172;
         transNum = 15;
      }
       if (powerBar.aniState == 4){

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
     DMANow(3, &shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512 );

    if((!(~(oldButtons) & ((1<<7))) && (~buttons & ((1<<7))))) {
     goToServe1();
    }
    if((!(~(oldButtons) & ((1<<6))) && (~buttons & ((1<<6))))) {
     goToServe2();
    }
    if((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
        if (powerBar.aniState == 0){

         ball.hspeed = 4;
        ballPower = 238;
        transNum = 9;
      }
      if (powerBar.aniState == 1){

         ball.hspeed = 3;
        ballPower = 220;
        transNum = 11;
      }
      if (powerBar.aniState == 2){

         ball.hspeed = 2;
        ballPower = 205;
        transNum = 15;
      }
        if (powerBar.aniState == 3){

          ball.hspeed = 2;
        ballPower = 190;
        transNum = 14;
      }
       if (powerBar.aniState == 4){

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
     DMANow(3, &shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512 );

    if((!(~(oldButtons) & ((1<<4))) && (~buttons & ((1<<4))))) {
        goToServe2();
    }
    if((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
       if (powerBar.aniState == 0){

          ball.hspeed = 4;
        ballPower = 205;
        ball.vspeed = 1;
        transNum = 8;
      }
      if (powerBar.aniState == 1){

          ball.hspeed = 4;
        ballPower = 180;
        ball.vspeed = 1;
        transNum = 7;
      }
      if (powerBar.aniState == 2){

          ball.hspeed = 3;
        ballPower = 150;
        ball.vspeed = 1;
        transNum = 7;
      }
        if (powerBar.aniState == 3){

           ball.hspeed = 2;
        ballPower = 136;
        ball.vspeed = 1;
        transNum = 9;
      }
       if (powerBar.aniState == 4){

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
     DMANow(3, &shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512 );

    if((!(~(oldButtons) & ((1<<5))) && (~buttons & ((1<<5))))) {
        goToServe2();
    }
    if((!(~(oldButtons) & ((1<<2))) && (~buttons & ((1<<2))))) {
        if (powerBar.aniState == 0){

         ball.hspeed = 4;
        ballPower = 205;
        ball.vspeed = -1;
        transNum = 8;
      }
      if (powerBar.aniState == 1){

         ball.hspeed = 4;
        ballPower = 180;
        ball.vspeed = -1;
        transNum = 7;
      }
      if (powerBar.aniState == 2){

        ball.hspeed = 3;
        ballPower = 150;
        ball.vspeed = -1;
        transNum = 7;
      }
        if (powerBar.aniState == 3){

          ball.hspeed = 2;
        ballPower = 136;
        ball.vspeed = -1;
        transNum = 9;
      }
       if (powerBar.aniState == 4){

          ball.hspeed = 1;
        ballPower = 76;
        ball.vspeed = -1;
        transNum = 9;
      }
       playSoundB(songs[1].data,songs[1].length,0);
         goToGame();

    }

}


void goToPause() {
    state = PAUSE;

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);

    DMANow(3, pausePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, pauseTiles, &((charblock *)0x6000000)[0], 416 / 2);
    DMANow(3, pauseMap, &((screenblock *)0x6000000)[31], 2048 / 2);
}


void pause() {
    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
    }
}


void goToWin() {
    state = WIN;

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);
    DMANow(3, winPal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, winTiles, &((charblock *)0x6000000)[0], 7008 / 2);
    DMANow(3, winMap, &((screenblock *)0x6000000)[31], 2048 / 2);
}


void win() {
    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        score = 0;
        oppScore = 0;
        point = 0;
        goToStart();
    }
}


void goToLose() {
    state = LOSE;

    (*(volatile unsigned short *)0x4000000) = 0 | (1<<8);


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((31)<<8) | (0<<7) | (0<<14);

    DMANow(3, losePal, ((unsigned short *)0x5000000), 512 / 2);
    DMANow(3, loseTiles, &((charblock *)0x6000000)[0], 12288 / 2);
    DMANow(3, loseMap, &((screenblock *)0x6000000)[31], 2048 / 2);
}


void lose() {
    if ((!(~(oldButtons) & ((1<<3))) && (~buttons & ((1<<3))))) {
        score = 0;
        oppScore = 0;
        goToStart();
    }
}
