



global._gridcellSize = 64;
global._gridwidth = room_width/global._gridcellSize;
global._gridheight = room_height/global._gridcellSize;
//global._currentgrid = mp_grid_create(0,0,(global._gridwidth),(global._gridheight),64,64);

global._currentgrid = mp_grid_create(0,0,(room_width/global._gridcellSize),((room_height)/global._gridcellSize),64,64);

////global._currentgrid = mp_grid_create(896,575,((3391-896)/global._gridcellSize),((2751-575)/global._gridcellSize),64,64);

_tiles_added=false; 

function add_tiles_to_mpgrid(grid_left, grid_top, grid_right, grid_bottom, cell_size) {
    /// Obtener el tilemap de la capa de colisiones
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
                mp_grid_add_cell(global._currentgrid, gx, gy); // Eliminar el desplazamiento 'gy-1'
            }
        }
    }
}

show_debug_message("_GRID SYSTEM INIT");