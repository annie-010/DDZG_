// Aumentar el temporizador





var _firerepetition_time=200*_deltatimeSec();









_timer+=_deltatimeSec();

if (_timer >= _firerepetition_time) {
    _timer = 0; // Reiniciar el temporizador

    // Ángulos base de los 5 disparos en grados, se dispararán 5 proyectiles en estos ángulos
    var base_angles = [30, 45, 60, 75, 90]; 

    // Ajustar los ángulos según la orientación
    switch (_orientation) {
        case 0: // Abajo-Derecha (referencia de 0° en la dirección derecha-abajo)
            for (var i = 0; i < array_length(base_angles); i++) {
                var angle = base_angles[i];
                create_projectile(x, y, angle); 
            }
            break;

        case 1: // Arriba-Derecha (se invierte verticalmente, pero no horizontalmente)
            for (var i = 0; i < array_length(base_angles); i++) {
                var angle = -base_angles[i]; // Se invierte el eje vertical
                create_projectile(x, y, angle);
            }
            break;

        case 2: // Arriba-Izquierda (se invierte vertical y horizontalmente)
            for (var i = 0; i < array_length(base_angles); i++) {
                var angle = 180 - base_angles[i]; // Se invierte en ambos ejes
                create_projectile(x, y, angle);
            }
            break;

        case 3: // Abajo-Izquierda (solo se invierte horizontalmente)
            for (var i = 0; i < array_length(base_angles); i++) {
                var angle = 180 + base_angles[i]; // Se invierte en el eje horizontal
                create_projectile(x, y, angle);
            }
            break;
    }
}
