///event step
// Movimiento en el plano X-Y
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

///_collwithplatformdmgsystem();

if floor(z)==6 { instance_destroy();}

/*

var playercoll = instance_place(x, y, oPlayer);
if (playercoll) {
    if (_check_z_collision(self, playercoll)) && (_collisioned==false) {
	///_StateAlterer_Effects(oPlayer,"Poison",5,5,false,(oPlayer._effLevelonePoisoned));	
	playercoll._effLevelonePoisoned._state=true;
	///show_debug_message("send poisoned");
///("id :" + string(id));
		var _texteffect=(instance_create_layer(x,y,"_Entities",otext_parent,{
		///typeDialog : "_instead"
		}));
_texteffect.typeDialog="_instead";
			_texteffect._text[0]="saki@@@@@@ Ha sido envenenada!";		
		_collisioned=true;
			instance_destroy();}}

