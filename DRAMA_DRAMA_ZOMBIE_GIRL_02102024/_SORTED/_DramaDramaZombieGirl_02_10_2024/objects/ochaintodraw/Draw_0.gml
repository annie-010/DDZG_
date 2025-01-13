// Calcular la distancia entre los puntos
var dist_x = _x2 - _x1;
var dist_y = (_y2 + _z2) - (_y1 + _z1);

draw_set_color(c_black);

// Inicializar los valores previos
var prev_x = _x1;
var prev_y = _y1 + _z1;

// Parámetros del arco
var amplitude = 20;  // Altura del arco
var steps = 10;      // Número de segmentos
var step_size = 1 / steps;  // Incremento de interpolación

// Dibujar la línea arqueada
for (var i = 0; i <= 1; i += step_size) {
    var t = i;  // Tiempo que va desde 0 a 1
    
    // Calcular la posición actual
    var pos_x = _x1 + dist_x * t;
    var pos_y = (_y1 + _z1) + dist_y * t + sin(t * pi) * amplitude;

    // Dibujar la línea conectando el punto anterior con el actual
    draw_line(prev_x, prev_y + _z1, pos_x, pos_y + _z1);

    // Dibujar un círculo en la posición actual
    //draw_circle(pos_x, pos_y + _z1, 3, false);  // Tamaño del círculo: radio de 3

    // Crear instancias si aún no se han creado
    if (!arco_creado) {
        var _flag = instance_create_depth(pos_x, _y1, depth, oflagvertical);

        // Calcular el desplazamiento en Z
        _flag.z = (pos_y - _y1) + (_z1);
    }

    // Actualizar el punto anterior
    prev_x = pos_x;
    prev_y = pos_y;
}

// Marcar las instancias como creadas
arco_creado = true;
