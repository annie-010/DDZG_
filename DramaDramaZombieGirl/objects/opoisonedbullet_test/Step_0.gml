
switch (_dirtomove) {
    case 0: move_x = _spdtomove; break;
    case 1: move_y = _spdtomove; break;
    case 2: move_x = -_spdtomove; break; // Corrección para dirección izquierda
    case 3: move_y = -_spdtomove; break; // Corrección para dirección arriba
    case noone: break;
}



if z<0{
	z += z_velocity; 
	z_velocity += z_gravity;
}


x+=move_x;
y+=move_y;
z+=move_z;

_collwithplatformdmgsystem();

if z>=0 { instance_destroy();}

if place_meeting(x,y,oPlayerWeapon) {



switch (_dirtomove) {
    case 0: _dirtomove=2; break;
    case 1: _dirtomove=3; break;
    case 2: _dirtomove=0 break; // Corrección para dirección izquierda
    case 3: _dirtomove=1; break; // Corrección para dirección arriba
    case noone: break;
}
z-=15;
}


	var _coll = collision_rectangle(x-16,((y+z)-16),x+16,y+z,oPlayerMask,true,true);



event_inherited();

