vx = camera_get_view_x(camera);
vy = camera_get_view_y(camera);




#region camera target
target_x = 0
target_y = 0;

if (instance_exists(oCameraFollow)) { 
	
	
	if global.earthquake==false {	target_x = oCameraFollow.x;
	target_y =oCameraFollow.y;

	var v_left = 0;
	var v_top = 0;
	var v_right = room_width; 
	var v_bottom = room_height;

	var pos_x = target_x - (RES_W / 2);
		pos_x = clamp(pos_x, v_left, v_right - RES_W);

	var pos_y = target_y - (RES_H / 2);
		pos_y = clamp(pos_y, v_top, v_bottom - RES_H);
	
	var cam_x = camera_get_view_x(camera);
		cam_x = lerp(cam_x, pos_x, CAM_SMOOTH);
	
	var cam_y = camera_get_view_y(camera);
		cam_y = lerp(cam_y, pos_y, CAM_SMOOTH);
		

    var cam_act_x =  camera_get_view_x(camera);
    var cam_act_y =  camera_get_view_y(camera);

    var cam_border_x = camera_get_view_border_x(camera); 
    var cam_border_y = camera_get_view_border_y(camera); 
		
		

	camera_set_view_pos(camera, cam_x, cam_y);}
	
	
	
	
	
	if global.earthquake==true{
		var movement_ = 1;
		
		
		vx = camera_get_view_x(camera);
vy = camera_get_view_y(camera);
		
	camera_set_view_pos(camera, vx+random_range(-10,10), vy+random_range(-10,10));
	global.earthquake=false;
	}
	
	
	
	
	
	
	
	}
	









#endregion










