// Parámetros del movimiento circular
var radio = 100; // Radio del círculo
orbita_ang += velocidad_orbita; // Incremento del ángulo

// Calcular nuevas posiciones en el círculo
x = oPlayer.x + cos(orbita_ang) * radio; // Nueva posición X
y = oPlayer.y + sin(orbita_ang) * radio; // Nueva posición Y

// Movimiento vertical
z = centrodeorbitra + sin(orbita_ang) * tamanodeorbita; // Movimiento vertical

// Mostrar debug (opcional)
// ("x: " + string(x) + ", y: " + string(y) + ", z: " + string(z));

if instance_exists(oPlayer) {
    var _dist = distance_to_point(oPlayer.x, oPlayer.y);
    
    // Ajustar la velocidad según la distancia
    if (_dist >= 300) {
        _runvel = .5; // Más rápido si está lejos
    } else {
        _runvel = .5; // Más lento si está cerca
    }

    // Movimiento hacia el jugador (opcional, si deseas que el objeto se acerque)
    move_towards_point(oPlayer.x, oPlayer.y, .5);
    
    // Ajustar la escala de la imagen
    if oPlayer.x > x {
        image_xscale = 1;
    } else if oPlayer.x < x {
        image_xscale = -1;
    }
}
