// Movimiento horizontal
x += speed * _dir;

// Verificación de límites y cambio de dirección
if (x >= limit_2) {
    x = limit_2;
    _dir = -1;
    image_xscale = -1; // Mirar a la izquierda
}
else if (x <= limit_1) {
    x = limit_1;
    _dir = 1;
    image_xscale = 1; // Mirar a la derecha
}