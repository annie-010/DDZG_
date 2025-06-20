/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
function _mpgrid_navigation3d(_rangedist, _rangez) {
	var _cellsize = 64;

	// Número total de celdas que cubrirá el grid en cada dirección (horizontal y vertical)
	var _grid_cells_total = floor(_rangedist / _cellsize) + 4; // 2 extra por lado
	var _grid_half_cells = _grid_cells_total div 2;

	// Crear el grid centrado en el enemigo
	var _grid = mp_grid_create(
		x - (_grid_half_cells * _cellsize), // inicio X en pixeles
		y - (_grid_half_cells * _cellsize), // inicio Y en pixeles
		_grid_cells_total, // ancho en celdas
		_grid_cells_total, // alto en celdas
		_cellsize,
		_cellsize
	);

	return _grid;
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

