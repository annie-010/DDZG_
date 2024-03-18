/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
///oShadow.depth

/*


if instance_exists(oEntity) 
{ 
	 with  (oEntity) {depth=-floor(y/32)+(global._depthbase)+1;} /// depth+=global._depthbase;
	
	var A1 = collision_rectangle(32,320,1022,954,oShadow,1,true);
	
	var A2 = collision_rectangle(1280,32,1854,1216,oShadow,1,true);	
	


if A1 {///show_debug_message("COLISION A1 ES POSITIVO ? " + string(A1));
	global._depthbase=-32;}

if A2 {///show_debug_message("COLISION A2 ES POSITIVO ? " + string(A2));
	global._depthbase=+32;}


	

	
}

























