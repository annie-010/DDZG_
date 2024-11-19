/// @function smooth_turn(target_x, target_y, smooth_factor)
/// @param {real} target_x - La coordenada X del objetivo
/// @param {real} target_y - La coordenada Y del objetivo
/// @param {real} smooth_factor - Factor de suavidad (entre 0 y 1)

function smooth_turn(target_x, target_y, smooth_factor) {
    var target_dir = point_direction(x, y, target_x, target_y);
    direction = lerp(direction, target_dir, smooth_factor);
}

