
//{{BLOCK(opp)

//======================================================================
//
//	opp, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 64 + 2048 = 2624
//
//	Time-stamp: 2022-11-09, 16:12:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_OPP_H
#define GRIT_OPP_H

#define oppTilesLen 64
extern const unsigned short oppTiles[32];

#define oppMapLen 2048
extern const unsigned short oppMap[1024];

#define oppPalLen 512
extern const unsigned short oppPal[256];

#endif // GRIT_OPP_H

//}}BLOCK(opp)
