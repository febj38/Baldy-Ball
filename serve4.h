
//{{BLOCK(serve4)

//======================================================================
//
//	serve4, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 84 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2688 + 2048 = 5248
//
//	Time-stamp: 2022-11-16, 20:45:47
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SERVE4_H
#define GRIT_SERVE4_H

#define serve4TilesLen 2688
extern const unsigned short serve4Tiles[1344];

#define serve4MapLen 2048
extern const unsigned short serve4Map[1024];

#define serve4PalLen 512
extern const unsigned short serve4Pal[256];

#endif // GRIT_SERVE4_H

//}}BLOCK(serve4)
