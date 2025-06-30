function _mpgrid_navigation3d(_rangedist, _rangez) {
    var _cellsize = 64;

    // Número total de celdas (con márgenes)
    var _grid_cells_total = floor(_rangedist / _cellsize) + 4;
    var _grid_half_cells = _grid_cells_total div 2;

    // Alinear al grid del mundo
    var _start_px = floor((self.x - _grid_half_cells * _cellsize) / _cellsize) * _cellsize;
    var _start_py = floor((self.y - _grid_half_cells * _cellsize) / _cellsize) * _cellsize;

    // Crear el grid
    var _grid = mp_grid_create(
        _start_px,
        _start_py,
        _grid_cells_total,
        _grid_cells_total,
        _cellsize,
        _cellsize
    );

    // Capa de colisión
    var _layer_id = layer_get_id("Tiles_00_coll");
    var _tilemap_id = layer_tilemap_get_id(_layer_id);
    var _offset_x = layer_get_x(_layer_id);
    var _offset_y = layer_get_y(_layer_id);

    // Bloquear celdas con tiles
    for (var _gx = 0; _gx < _grid_cells_total; _gx++) {
        for (var _gy = 0; _gy < _grid_cells_total; _gy++) {
            var _cell_px = _start_px + _gx * _cellsize;
            var _cell_py = _start_py + _gy * _cellsize;

            var _tile_x = (_cell_px - _offset_x) div _cellsize;
            var _tile_y = (_cell_py - _offset_y) div _cellsize;

            var _tile_index = tilemap_get(_tilemap_id, _tile_x, _tile_y);
            if (_tile_index > 0) {
                mp_grid_add_cell(_grid, _gx, _gy);
            }
        }
    }

    // Struct con toda la información útil
    return {
        grid     : _grid,
        pos_x    : _start_px,
        pos_y    : _start_py,
        cols     : _grid_cells_total,
        rows     : _grid_cells_total,
        cellsize : _cellsize
    };
}







function zfloor_grid_create(_cell_size) {
    var _grid_width  = room_width div _cell_size;
    var _grid_height = room_height div _cell_size;

    var _grid = ds_grid_create(_grid_width, _grid_height);

    // Inicializar todo con altura 0 por defecto
    ds_grid_clear(_grid, 0);

    return _grid;
}

global.zfloor_grid = zfloor_grid_create(64);







function separate_from_wall_enemiez() {

// Derecha
var inst = instance_place(x + 64, y, oplatformparent);
if (inst != noone && abs(inst._height) > _currentclimbcapacity) {
    x -= 16; // Empujar hacia la izquierda
    show_debug_message("Fue empujado hacia la izquierda por altura " + string(inst._height));
}

// Abajo
inst = instance_place(x, y + 64, oplatformparent);
if (inst != noone && abs(inst._height) > _currentclimbcapacity) {
    y -= 16; // Empujar hacia arriba
    show_debug_message("Fue empujado hacia arriba por altura " + string(inst._height));
}

// Izquierda
inst = instance_place(x - 64, y, oplatformparent);
if (inst != noone && abs(inst._height) > _currentclimbcapacity) {
    x += 16; // Empujar hacia la derecha
    show_debug_message("Fue empujado hacia la derecha por altura " + string(inst._height));
}

// Arriba
inst = instance_place(x, y - 64, oplatformparent);
if (inst != noone && abs(inst._height) > _currentclimbcapacity) {
    y += 16; // Empujar hacia abajo
    show_debug_message("Fue empujado hacia abajo por altura " + string(inst._height));
}


}







/// update_enemy_pathfinding(_range, _currentclimbcapacity, _pathvel, ref mp_navigation, ref path_navigation)
/// _range: rango para crear mp_navigation
/// _currentclimbcapacity: altura máxima que puede subir el enemigo
/// _pathvel: velocidad del path
/// mp_navigation: variable que guarda el mp_grid struct (pasada por referencia)
/// path_navigation: id del path (pasada por referencia)

function update_enemy_pathfinding(_range, _currentclimbcapacity, _pathvel, mp_navigation, path_navigation) {
    if (!instance_exists(oPlayer)) return;

    var target = oPlayer;
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
        if (path_navigation != -1) {
            path_delete(path_navigation);
            path_navigation = -1;
        }

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


















// Inherit the parent event
event_inherited();

