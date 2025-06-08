if !instance_exists(oSavegame) {
	instance_create_layer(x,y,"SYSTEM",oSavegame);
}




if keyboard_check(ord("G")) {
///show_debug_message("Actual Volume Bg1 Gain  [ " + (string(_AudioLayersVolume._bg1)) + " ]");
}










if global.game_restarted==true {
	
with(all) {
	
	if instance_id!=oCameraResolution {
	instance_destroy();
	} 
	game_restart();
}
global.game_restarted=false;
}









	if instance_exists(CAMERA_TARGET) {
camera_set_view_pos(cam,CAMERA_TARGET.x-(VIEW_WIDTH/2),CAMERA_TARGET.y-(VIEW_HEIGHT/2));

switch(room) { 
	
	case r_playable_5th_neonoffice:
///
	
	//
	break;
	
	
	
	case r_playable_1th_public:
//camera_set_view_pos(cam,CAMERA_TARGET.x-(VIEW_WIDTH/2),CAMERA_TARGET.y-(VIEW_HEIGHT/2));
//CAMERA_TARGET.target=oPlayer;
	//

	break;
	





}
}









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
   /// camera_set_view_pos(camera, x - (VIEW_WIDTH * 0.5), y - (VIEW_HEIGHT * 0.5));
}





if keyboard_check_pressed(ord("P")) {
///show_debug_message("ocameraRes_x : "+ string(x) +  "    ocameraRes_y : " + string(y));
}








if keyboard_check_pressed(ord("Q")) {
if _shaderdraw==true {
_shaderdraw=false;
//show_debug_message("shader draw false")

}
if _shaderdraw==false {
_shaderdraw=true;
///show_debug_message("shader draw true")

}

}















