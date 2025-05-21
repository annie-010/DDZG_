if (visible == true) {
    draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,0,c_white,1);

    if (_ischargedbyenemies == true) {
        if (_isenemiechargedrawed == false) {
			
            // Bucle for para dibujar el sprite 6 veces
            for (var i = 0; i < 6; i++) {
				
				if i>=0 && i<4 {
				draw_sprite(spr_HanamariFigthwalk,0,x+((-32)+(32*i)),y)
				} else if i>3 && i<7 {
					draw_sprite(spr_HanamariFigthwalk,0,(x-(96)+(32*i)),y+64)
				}
		

            }
        }
    } else if (_ischargedbyenemies==false) {
	
	
	}
}