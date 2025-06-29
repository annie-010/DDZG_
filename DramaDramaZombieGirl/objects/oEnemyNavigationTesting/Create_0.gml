/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
target=noone;
target_x=0;
target_y=0;
// Inherit the parent event
event_inherited();
mp_navigation = noone;
path_navigation =-1;
_range = 1000;
_climbcapacity=64;
_currentclimbcapacity=_climbcapacity;
_pathvel=3;
_onplatform=false;



zfloor = 0;
zfloor_last = 0;




_recalculate=false;
z=0;
/*



path_navigation = -1;

*/





/// @function a_star_height_path(start_x, start_y, goal_x, goal_y, cellsize, climb_capacity)
/// @desc Devuelve una ds_list con las posiciones del path, o `undefined` si no hay camino.
/// @returns ds_list | undefined

/// function a_star_grid(grid, start_x, start_y, goal_x, goal_y)
/// @param grid        ds_grid (mp_grid)
/// @param start_x     número (posición en el mundo)
/// @param start_y     número (posición en el mundo)
/// @param goal_x      número (posición en el mundo)
/// @param goal_y      número (posición en el mundo)
/// @return            ds_list con puntos del camino o -1 si no se pudo encontrar

/// function a_star_grid(grid, start_x, start_y, goal_x, goal_y, cell_size)
/// @param grid        ds_grid (mp_grid)
/// @param start_x     número en el mundo
/// @param start_y     número en el mundo
/// @param goal_x      número en el mundo
/// @param goal_y      número en el mundo
/// @param cell_size   tamaño de cada celda
/// @return            ds_list del camino o -1 si falla

function a_star_grid(grid, start_x, start_y, goal_x, goal_y, cell_size) {
    var cols = ds_grid_width(grid);
    var rows = ds_grid_height(grid);

    var grid_left = mp_grid_get_x(grid);
    var grid_top  = mp_grid_get_y(grid);

    var start_cx = floor((start_x - grid_left) / cell_size);
    var start_cy = floor((start_y - grid_top) / cell_size);
    var goal_cx  = floor((goal_x  - grid_left) / cell_size);
    var goal_cy  = floor((goal_y  - grid_top)  / cell_size);

    if (start_cx < 0 || start_cx >= cols || start_cy < 0 || start_cy >= rows) return -1;
    if (goal_cx  < 0 || goal_cx  >= cols || goal_cy  < 0 || goal_cy  >= rows) return -1;
    if (mp_grid_get_cell(grid, start_cx, start_cy)) return -1;
    if (mp_grid_get_cell(grid, goal_cx, goal_cy)) return -1;

    var came_from = ds_grid_create(cols, rows);
    var g_score   = ds_grid_create(cols, rows);
    var f_score   = ds_grid_create(cols, rows);
    var open_set  = ds_priority_create();
    var INFINITY  = 1000000000;

    ds_grid_set_region(g_score, 0, 0, cols - 1, rows - 1, INFINITY);
    ds_grid_set_region(f_score, 0, 0, cols - 1, rows - 1, INFINITY);

    g_score[# start_cx, start_cy] = 0;
    f_score[# start_cx, start_cy] = point_distance(start_cx, start_cy, goal_cx, goal_cy);

    var open_index = start_cx + start_cy * cols;
    ds_priority_add(open_set, open_index, f_score[# start_cx, start_cy]);

    var neighbors = [
        [ 1,  0],
        [-1,  0],
        [ 0,  1],
        [ 0, -1]
    ];

    while (!ds_priority_empty(open_set)) {
        var current_index = ds_priority_delete_min(open_set);
        var current_x = current_index mod cols;
        var current_y = current_index div cols;

        if (current_x == goal_cx && current_y == goal_cy) {
            var path = ds_list_create();
            var cx = current_x;
            var cy = current_y;

            while (!(cx == start_cx && cy == start_cy)) {
                ds_list_insert(path, 0, [
                    grid_left + cx * cell_size + cell_size / 2,
                    grid_top  + cy * cell_size + cell_size / 2
                ]);
                var prev_index = came_from[# cx, cy];
                cx = prev_index mod cols;
                cy = prev_index div cols;
            }

            ds_list_insert(path, 0, [
                grid_left + start_cx * cell_size + cell_size / 2,
                grid_top  + start_cy * cell_size + cell_size / 2
            ]);

            ds_grid_destroy(came_from);
            ds_grid_destroy(g_score);
            ds_grid_destroy(f_score);
            ds_priority_destroy(open_set);

            return path;
        }

        for (var i = 0; i < array_length(neighbors); i++) {
            var nx = current_x + neighbors[i][0];
            var ny = current_y + neighbors[i][1];

            if (nx < 0 || ny < 0 || nx >= cols || ny >= rows) continue;
            if (mp_grid_get_cell(grid, nx, ny)) continue;

            var tentative_g = g_score[# current_x, current_y] + 1;

            if (tentative_g < g_score[# nx, ny]) {
                came_from[# nx, ny] = current_index;
                g_score[# nx, ny] = tentative_g;
                f_score[# nx, ny] = tentative_g + point_distance(nx, ny, goal_cx, goal_cy);
                var n_index = nx + ny * cols;
                ds_priority_add(open_set, n_index, f_score[# nx, ny]);
            }
        }
    }

    ds_grid_destroy(came_from);
    ds_grid_destroy(g_score);
    ds_grid_destroy(f_score);
    ds_priority_destroy(open_set);
    return -1;
}
