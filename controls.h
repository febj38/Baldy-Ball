
//{{BLOCK(controls)

//======================================================================
//
//	controls, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 293 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9376 + 2048 = 11936
//
//	Time-stamp: 2022-12-09, 09:37:16
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CONTROLS_H
#define GRIT_CONTROLS_H

#define controlsTilesLen 9376
extern const unsigned short controlsTiles[4688];

#define controlsMapLen 2048
extern const unsigned short controlsMap[1024];

#define controlsPalLen 512
extern const unsigned short controlsPal[256];

#endif // GRIT_CONTROLS_H

//}}BLOCK(controls)
