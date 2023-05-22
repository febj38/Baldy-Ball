
//{{BLOCK(serve3)

//======================================================================
//
//	serve3, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 84 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2688 + 2048 = 5248
//
//	Time-stamp: 2022-11-16, 20:44:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SERVE3_H
#define GRIT_SERVE3_H

#define serve3TilesLen 2688
extern const unsigned short serve3Tiles[1344];

#define serve3MapLen 2048
extern const unsigned short serve3Map[1024];

#define serve3PalLen 512
extern const unsigned short serve3Pal[256];

#endif // GRIT_SERVE3_H

//}}BLOCK(serve3)
