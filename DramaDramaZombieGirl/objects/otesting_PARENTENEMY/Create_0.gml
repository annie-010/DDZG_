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













/// @function _mpgrid_block_tiles_by_layer(_grid, _layer_name)
/// @description Bloquea celdas del grid si hay un tile en la capa especificada.
/*
function _mpgrid_block_tiles_by_layer(_gridtoread, _layer_name) {
	var _tilemap = layer_tilemap_get_id(layer_get_id(_layer_name));

	var _cellw = mp_grid_get_cell_width(_gridtoread);
	var _cellh = mp_grid_get_cell_height(_gridtoread);

	var _grid_x = mp_grid_get_x(_gridtoread);
	var _grid_y = mp_grid_get_y(_gridtoread);

	var _cols = mp_grid_get_columns(_gridtoread);
	var _rows = mp_grid_get_rows(_gridtoread);

	for (var i = 0; i < _cols; i++) {
		for (var j = 0; j < _rows; j++) {
			var cell_x = _grid_x + i * _cellw;
			var cell_y = _grid_y + j * _cellh;

			var tiledata = tilemap_get_at_pixel(_tilemap, cell_x, cell_y);
			if (tiledata != 0) {
				mp_grid_add_cell(_gridtoread, i, j); // celda bloqueada
			}
		}
	}
}








*/

























// Inherit the parent event
event_inherited();

