/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/*

if !place_meeting(x,y,o_block_par) { show_debug_message("CAYENDO, NO PLATAFORMA"); 
	if z>0 {
	
		z -= zgrav; ///apply downforce on z pos/
	zgrav += 0.5; ///grav gets stronger each step/
}}


/*






var Collwith = place_meeting(x,y,o_block_par);

switch Collwith {
	
	case noone: show_debug_message("SIN INFORMACION"); 
	
	 break;
	
	
	case true: show_debug_message("MONEDA COLISIONANDO CON UNA PLATAFORMA");
	break;
	
	
	
	case false: show_debug_message("MONEDA NO COLISIONANDO;");
	if z>0 {
	
		z -= zgrav; /apply downforce on z pos/
	zgrav += 0.5; /grav gets stronger each step/
	
	}
	
	
	break;
}

*/
if !place_meeting(x,y,o_block_par) {	maskInplatform=false; depth=-floor(bbox_bottom/32);} 


_totalZ=(z+zfloor);

