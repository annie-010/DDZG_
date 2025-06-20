



global._gridcellSize = 64;
global._gridwidth = room_width/global._gridcellSize;
global._gridheight = room_height/global._gridcellSize;
//global._currentgrid = mp_grid_create(0,0,(global._gridwidth),(global._gridheight),64,64);
global._currentgrid = mp_grid_create(0,0,(room_width/global._gridcellSize),((room_height)/global._gridcellSize),64,64);
_tiles_added=false; 

show_debug_message("_GRID SYSTEM INIT");