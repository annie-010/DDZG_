

function _savegame() {
ini_open("save.ini");
ini_write_string("Jugador", "nombre", "Saki"); // Guarda el nombre
ini_write_real("Jugador", "vida", 100); // Guarda la vida
ini_write_real("Jugador", "pos_x", oPlayer.x); // Guarda la posición X
ini_write_real("Jugador", "pos_y", oPlayer.y); // Guarda la posición Y
ini_write_real("Jugador","_currentroom", room);
ini_close();
}


function _loadgame() {
	draw_sprite(spr_blackfade_filter,0,0,0);
	/// cargar_partida()
if (file_exists("save.ini")) { // Verifica si existe el archivo
    ini_open("save.ini"); // Abre el archivo
	room_goto(ini_read_real("Jugador","_currentroom",r_playable_5th_neonoffice))
    global.nombre = ini_read_string("Jugador", "nombre", "Saki"); 
    global.vida = ini_read_real("Jugador", "vida", 100);
	
	
	
	
	
	
	if instance_exists(oPlayer) {
		
		show_message("CARGANDO PARTIDA _ PERSONAJE EXISTE, REUBICAR..");
		
	   oPlayer.x = ini_read_real("Jugador", "pos_x", 320);
    oPlayer.y = ini_read_real("Jugador", "pos_y", 240);
	} else {
			show_message("CARGANDO PARTIDA _ PERSONAJE NO EXISTE,..");
	
	}
	
 

	ini_close(); // Cierra el archivo
} else {show_message("No hay una partida guardada.");
}
}