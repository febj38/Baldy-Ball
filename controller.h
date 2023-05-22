
//{{BLOCK(controller)

//======================================================================
//
//	controller, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 293 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 9376 + 2048 = 11936
//
//	Time-stamp: 2022-12-09, 09:51:11
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CONTROLLER_H
#define GRIT_CONTROLLER_H

#define controllerTilesLen 9376
extern const unsigned short controllerTiles[4688];

#define controllerMapLen 2048
extern const unsigned short controllerMap[1024];

#define controllerPalLen 512
extern const unsigned short controllerPal[256];

#endif // GRIT_CONTROLLER_H

//}}BLOCK(controller)
