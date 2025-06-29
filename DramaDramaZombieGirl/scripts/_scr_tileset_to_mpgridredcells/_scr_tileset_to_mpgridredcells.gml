
function add_tiles_to_mpgrid(gridtouse,grid_left, grid_top, grid_right, grid_bottom, cell_size) {
    /// Obtener el tilemap de la capa de colisiones ///global._currentgrid
    var layer_id = layer_get_id("Tiles_00_coll");
    var tilemap_id = layer_tilemap_get_id(layer_id);

    /// Obtener la posición del tilemap en el mundo
    var tilemap_offset_x = layer_get_x(layer_id);
    var tilemap_offset_y = layer_get_y(layer_id);

    /// Calcular las dimensiones de la grid a partir de los parámetros
    var grid_width = (grid_right - grid_left) div cell_size;
    var grid_height = (grid_bottom - grid_top) div cell_size;

    /// Recorrer la cuadrícula
    for (var gx = 0; gx < grid_width; gx++) {
        for (var gy = 0; gy < grid_height; gy++) {
            // Calcular las coordenadas de la celda en el mundo
            var cell_x = grid_left + gx * cell_size;
            var cell_y = grid_top + gy * cell_size;

            // Convertir las coordenadas del mundo a índices del tilemap
            var tile_x = (cell_x - tilemap_offset_x) div cell_size;
            var tile_y = (cell_y - tilemap_offset_y) div cell_size;

            // Obtener el índice del tile correspondiente
            var tile_index = tilemap_get(tilemap_id, tile_x, tile_y);

            // Si hay un tile en esta celda, marcarla como no transitable
            if (tile_index > 0) {
                mp_grid_add_cell(gridtouse, gx, gy); // Eliminar el desplazamiento 'gy-1'
            }
        }
    }
}







function add_tiles_to_addheight_to_mpgrid(gridtouse, userclimbcapacity, grid_left, grid_top, grid_right, grid_bottom, cell_size) {
    // Declarar el array local de alturas
    var _tilez = array_create(12);
    for (var i = 0; i < 12; i++) {
        _tilez[i] = i * 16;
    }

    // Obtener el tilemap de la capa de alturas
    var layer_id = layer_get_id("Tiles_00_altura");
    var tilemap_id = layer_tilemap_get_id(layer_id);
    var tilemap_offset_x = layer_get_x(layer_id);
    var tilemap_offset_y = layer_get_y(layer_id);

    // Calcular dimensiones del grid
    var grid_width = (grid_right - grid_left) div cell_size;
    var grid_height = (grid_bottom - grid_top) div cell_size;

    // Recorrer la cuadrícula
    for (var gx = 0; gx < grid_width; gx++) {
        for (var gy = 0; gy < grid_height; gy++) {
            var cell_x = grid_left + gx * cell_size;
            var cell_y = grid_top + gy * cell_size;

            var tile_x = (cell_x - tilemap_offset_x) div cell_size;
            var tile_y = (cell_y - tilemap_offset_y) div cell_size;

            var tile_index = tilemap_get(tilemap_id, tile_x, tile_y);

            if (tile_index > 0 && tile_index < array_length(_tilez)) {
                var altura = _tilez[tile_index];

                if (altura > userclimbcapacity) {
                    mp_grid_add_cell(gridtouse, gx, gy);
                }
            }
        }
    }
}






function zfloor_grid_from_tilemap(_layer_name, _cell_size) {
    show_debug_message("=== Iniciando generación de zfloor grid desde capa: " + _layer_name + " ===");

    var _layer_id    = layer_get_id(_layer_name);
    var _tilemap_id  = layer_tilemap_get_id(_layer_id);

    var _grid_w = room_width div _cell_size;
    var _grid_h = room_height div _cell_size;

    var _zgrid = ds_grid_create(_grid_w, _grid_h);
    ds_grid_clear(_zgrid, 0);

    var _offset_x = layer_get_x(_layer_id);
    var _offset_y = layer_get_y(_layer_id);

    var _tiles_encontrados = 0;
    var _min_altura = 999999;
    var _max_altura = -999999;

    for (var gx = 0; gx < _grid_w; gx++) {
        for (var gy = 0; gy < _grid_h; gy++) {
            var px = gx * _cell_size + _offset_x;
            var py = gy * _cell_size + _offset_y;

            var tiledata = tilemap_get_at_pixel(_tilemap_id, px, py);
            if (tiledata != 0) {
                var tile_index = tile_get_index(tiledata);
                var altura = tile_index * -16; // ← alturas negativas

                ds_grid_set(_zgrid, gx, gy, altura);

                _tiles_encontrados++;

                if (altura < _min_altura) _min_altura = altura;
                if (altura > _max_altura) _max_altura = altura;
            }
        }
    }

    show_debug_message("Total de celdas con tile detectado: " + string(_tiles_encontrados));
    show_debug_message("Altura mínima detectada: " + string(_min_altura));
    show_debug_message("Altura máxima detectada: " + string(_max_altura));
    show_debug_message("=== zfloor_grid completado ===");

    return _zgrid;
}














function mpgrid_filter_by_zfloor(_mpgrid, _zgrid, _max_delta_z) {
    var _cols = ds_grid_width(_zgrid);
    var _rows = ds_grid_height(_zgrid);

    for (var _gx = 0; _gx < _cols; _gx++) {
        for (var _gy = 0; _gy < _rows; _gy++) {
            var _z_here = ds_grid_get(_zgrid, _gx, _gy);

            // Vecinos en 4 direcciones
            var _vecinos = [
                [ _gx + 1, _gy ],
                [ _gx - 1, _gy ],
                [ _gx, _gy + 1 ],
                [ _gx, _gy - 1 ]
            ];

            for (var _v = 0; _v < array_length(_vecinos); _v++) {
                var _vx = _vecinos[_v][0];
                var _vy = _vecinos[_v][1];

                if (_vx >= 0 && _vx < _cols && _vy >= 0 && _vy < _rows) {
                    var _z_vecino = ds_grid_get(_zgrid, _vx, _vy);
                    var _dz = abs(_z_here - _z_vecino);

                    if (_dz > _max_delta_z) {
                        mp_grid_add_cell(_mpgrid, _gx, _gy); // Bloquear celda
                        break;
                    }
                }
            }
        }
    }
}








