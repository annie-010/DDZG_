/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if nextRoom_x!=0 && nextRoom_y!=0 && _active==false
 {

if instance_exists(oPosRoomplayer) {
	oPosRoomplayer.posPlayer_x=nextRoom_x;
	oPosRoomplayer.posPlayer_y=nextRoom_y;
	if room_exists(roomTarget) { 
		
		
		var	camera_x=camera_get_view_x(camera);
var	camera_y=camera_get_view_x(camera);
	
	if room_exists(roomTarget) { instance_create_layer(camera_x,camera_y,"FRONT_EFFECTS",oTransBlackOut);}
		
		
		
		
		
		
 alarm[0]=30;
	} _active=true; oPlayer.ActualPlayerState=PlayerStates.INACTIVE;
}}







