
//{{BLOCK(serve1)

//======================================================================
//
//	serve1, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 84 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2688 + 2048 = 5248
//
//	Time-stamp: 2022-11-17, 17:58:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SERVE1_H
#define GRIT_SERVE1_H

#define serve1TilesLen 2688
extern const unsigned short serve1Tiles[1344];

#define serve1MapLen 2048
extern const unsigned short serve1Map[1024];

#define serve1PalLen 512
extern const unsigned short serve1Pal[256];

#endif // GRIT_SERVE1_H

//}}BLOCK(serve1)
