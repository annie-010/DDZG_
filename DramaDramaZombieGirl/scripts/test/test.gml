/// @function mpgrid_filter_tiles_by_zfloor(_mpgrid, _z_reference, _z_limit)
/// @desc Bloquea en el mp_grid todas las celdas cuya altura (tile index de "Tiles_00_altura") se aleje más de _z_limit respecto al z del enemigo

function mpgrid_filter_tiles_by_zfloor(_mpgrid, _z_reference, _z_limit) {
    var _layer_id    = layer_get_id("Tiles_00_altura");
    var _tilemap_id  = layer_tilemap_get_id(_layer_id);
    var _offset_x    = layer_get_x(_layer_id);
    var _offset_y    = layer_get_y(_layer_id);

    var _cellsize = mp_grid_get_cell_width(_mpgrid); // asumimos celdas cuadradas
    var _cols     = mp_grid_get_columns(_mpgrid);
    var _rows     = mp_grid_get_rows(_mpgrid);
    var _grid_x   = mp_grid_get_x(_mpgrid);
    var _grid_y   = mp_grid_get_y(_mpgrid);

    var _blocked = 0;

    for (var gx = 0; gx < _cols; gx++) {
        for (var gy = 0; gy < _rows; gy++) {

            // Coordenadas del mundo de la celda
            var world_x = _grid_x + gx * _cellsize;
            var world_y = _grid_y + gy * _cellsize;

            var tiledata = tilemap_get_at_pixel(_tilemap_id, world_x, world_y);
            var tile_index = tile_get_index(tiledata);

            // Tile 0 = altura 0, Tile 1 = -16, Tile 2 = -32, etc.
            var tile_z = -tile_index * 16;

            if (abs(tile_z - _z_reference) > _z_limit) {
                mp_grid_add_cell(_mpgrid, gx, gy);
                _blocked++;
            }
        }
    }

    show_debug_message("Altura filtrada: " + string(_blocked) + " celdas bloqueadas por delta z.");
}
