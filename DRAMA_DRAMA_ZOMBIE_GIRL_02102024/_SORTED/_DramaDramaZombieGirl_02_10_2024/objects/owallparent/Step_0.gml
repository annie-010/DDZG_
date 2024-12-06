

if instance_exists(oPlayer) {
	
	
	var _distance=distance_to_point(oPlayer.x,oPlayer.y);
	
	
	if _distance<=854 {

		visible=1;  
		if _distance<=64 {
				if oPlayer.y>=y {image_alpha=1;} 
		else {image_alpha=.5;}
		} else if _distance>64 {image_alpha=1;}
		
		

		
		}
		
		
	else if _distance>854 {visible=0;} 
	}