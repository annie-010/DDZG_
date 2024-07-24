if instance_exists(oCameraTarget) {
	xto = oCameraTarget.target_x;
	yto = oCameraTarget.target_y;
}

x+= (xto -x)/25; 
y+= (yto -y)/25; 

camera_set_view_pos(view_camera[0],x-(VIEW_WIDTH*.5),y-(VIEW_HEIGHT*.5));