
//{{BLOCK(serve2)

//======================================================================
//
//	serve2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 84 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2688 + 2048 = 5248
//
//	Time-stamp: 2022-11-16, 20:44:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SERVE2_H
#define GRIT_SERVE2_H

#define serve2TilesLen 2688
extern const unsigned short serve2Tiles[1344];

#define serve2MapLen 2048
extern const unsigned short serve2Map[1024];

#define serve2PalLen 512
extern const unsigned short serve2Pal[256];

#endif // GRIT_SERVE2_H

//}}BLOCK(serve2)
