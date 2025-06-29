// ===============================================
// Enemigo: Pathfinding con alturas (Begin Step)
if (instance_exists(oPlayer)) {
    target = oPlayer;
    var target_x = target.x;
    var target_y = target.y;

    if (!variable_global_exists("zfloor_grid")) {
        global.zfloor_grid = zfloor_grid_from_tilemap("Tiles_00_altura", z + 64);
    }

    if (mp_navigation == noone) {
        mp_navigation = _mpgrid_navigation3d(_range, 0);
        
        add_tiles_to_addheight_to_mpgrid(
            mp_navigation.grid,
            _currentclimbcapacity,
            mp_navigation.pos_x,
            mp_navigation.pos_y,
            mp_navigation.pos_x + mp_navigation.cols * mp_navigation.cellsize,
            mp_navigation.pos_y + mp_navigation.rows * mp_navigation.cellsize,
            mp_navigation.cellsize
        );

        alarm[1] = 20;

        if (path_navigation != -1) {
            path_delete(path_navigation);
            path_navigation = -1;
        }

    } else {
        path_navigation = path_add();
        
        var path_found = mp_grid_path(mp_navigation.grid, path_navigation, x, y, target_x, target_y, false);
        
        if (path_found) {
            path_start(path_navigation, _pathvel, path_action_stop, false);
        } else {
            path_delete(path_navigation);
            path_navigation = -1;
        }
    }
}
