/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event


show_debug_message("_creado dmg");
_selected=noone;
_owner=noone;

/*

z=0;
_colheight=0;
_dmg=0;

floorZ=0;





*/
z=0;
_colheight=0;
_dmg=0;
_effect=noone;
_used=false;
_hp=0;
floorZ=0;


function _collwithplatformdmgsystem() {
    var _platformcolling = instance_place(x + move_x, y + move_y, oplatformparent);
    ///var _platformsensor = collision_line(x, y, x + (_sensorcoll * image_xscale), y, oplatformparent, true, true);
    
    if (_platformcolling) { 
        ////("encontrada colisión");
       /// ("platform id : " + string(_platformcolling.custom_id));
        
        var _platformsurface = _platformcolling._surface;

        if (z > _platformsurface) {
            if (abs(z - (_platformsurface + _platformcolling._colheight)) > _colheight) {
              ///  ("transitas bajo la plataforma");
				depth = _platformcolling.depth+1;
				instance_destroy();
            } else {			
                move_y = 0; 
                move_x = 0;  
				instance_destroy();
                ///("estás bloqueado de la plataforma");
            }
        } else if (z <= _platformsurface) {
            ///("estás por encima de la plataforma");
            if (_platformcolling.object_index == omoveplatform_parent) {
               /// ("estás en una plataforma móvil");
                




            }
            _onPlatform = true; 
            floorZ = _platformsurface;  
            depth = _platformcolling.depth-1;
        }
    } else {
        _onPlatform = false; 
        floorZ = 0; 
       /// depth = floor(-y / 16);
    }
}

