if instance_exists(oCameraTarget) {
    xto = oCameraTarget.target_x;
    yto = oCameraTarget.target_y;
}


if (_fadein) && _fadevalue==2 {
alarm_set(0,128);
_fadevalue=1;
} if (_fadein)==false {
	_fadevalue-=0.01;
}


// Interpolación suave hacia el objetivo
x = lerp(x, xto, 0.04); // Usa lerp para interpolación suave
y = lerp(y, yto, 0.04); // Factor de 0.04 para un movimiento suave

// Verificar si la tecla "E" fue presionada para activar el terremoto


// Actualizar el tiempo transcurrido global
global._gamesecondsTranscurred += _deltatimeSec();
///=false;
// Manejo del terremoto con un "switch"
if (_earthquake==true) {
    var _movement = 10;
    var shake_x = random_range(-_movement, _movement);
    var shake_y = random_range(-_movement, _movement);

    // Aplicar movimiento aleatorio a la cámara
    camera_set_view_pos(camera, x - (VIEW_WIDTH * 0.5) + shake_x, y - (VIEW_HEIGHT * 0.5) + shake_y);
    
    // Desactivar el terremoto después de aplicar el temblor una vez
    _earthquake = false;
} else {
    // Establecer la posición de la cámara normalmente cuando no hay terremoto
    camera_set_view_pos(camera, x - (VIEW_WIDTH * 0.5), y - (VIEW_HEIGHT * 0.5));
}





