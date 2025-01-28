if global.game_restarted==true {
	
with(all) {
	
	if instance_id!=oCameraResolution {
	instance_destroy();
	} 
	game_restart();
}
	
	
global.game_restarted=false;
}















if instance_exists(oCameraTarget) {
    xto = oCameraTarget.target_x;
    yto = oCameraTarget.target_y;
}



// Interpolación suave hacia el objetivo
x = lerp(x, xto, 0.04); 
y = lerp(y, yto, 0.04); 


if (instance_exists(oPlayer)) {
	global._gamesecondsTranscurred +=(_deltatimeSec()/2);
}
///var frame_time = 1 / 60; // Tiempo ideal por frame (60 FPS)
///var actual_time = _deltatimeSec();

/////show_debug_message("Ideal: " + string(frame_time) + ", Real: " + string(actual_time));





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





