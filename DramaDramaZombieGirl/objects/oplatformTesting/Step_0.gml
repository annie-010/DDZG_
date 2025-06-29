if place_meeting(x,y,oPlayer) {
	if oPlayer.z<_surface {
_inuse=true;} else if oPlayer.z>_surface {_inuse=false;}
}

var _dark = instance_place(x,y,odarksectionroom) 


	if _dark!=noone {
		if _dark.visible==true { 
			visible=false;
			} else if _dark.visible==false {
			visible=true;
			}
	}



if tileset_zid==false {

// Obtener la capa y el tilemap
var layer_id = layer_get_id("Tiles_00_altura");
var tilemap_id = layer_tilemap_get_id(layer_id);

// Calcular coordenadas de tile
var tile_x = (x - layer_get_x(layer_id)) div 64; // columna
var tile_y = (y - layer_get_y(layer_id)) div 64; // fila

switch (_height) {
    case -16:
        tilemap_set(tilemap_id,1, tile_x, tile_y);
        ///show_debug_message("Altura -16: Tile index 1 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -32:
        tilemap_set(tilemap_id, 2,tile_x, tile_y);
        ///show_debug_message("Altura -32: Tile index 2 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -48:
        tilemap_set(tilemap_id,3, tile_x, tile_y);
        ///show_debug_message("Altura -48: Tile index 3 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -64:
        tilemap_set(tilemap_id,4, tile_x, tile_y);
        ////show_debug_message("Altura -64: Tile index 4 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -80:
        tilemap_set(tilemap_id,5, tile_x, tile_y);
        ///show_debug_message("Altura -80: Tile index 5 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -96:
        tilemap_set(tilemap_id,6, tile_x, tile_y);
        ///show_debug_message("Altura -96: Tile index 6 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -112:
        tilemap_set(tilemap_id,7, tile_x, tile_y);
        ///show_debug_message("Altura -112: Tile index 7 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -128:
        tilemap_set(tilemap_id,8,tile_x, tile_y);
        ///show_debug_message("Altura -128: Tile index 8 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -144:
        tilemap_set(tilemap_id, 9,tile_x, tile_y);
        ///show_debug_message("Altura -144: Tile index 9 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -160:
        tilemap_set(tilemap_id,10 ,tile_x, tile_y);
        ///show_debug_message("Altura -160: Tile index 10 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -176:
        tilemap_set(tilemap_id, 11,tile_x, tile_y);
        ///show_debug_message("Altura -176: Tile index 11 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    case -192:
        tilemap_set(tilemap_id, tile_x, tile_y, 12);
        ///show_debug_message("Altura -192: Tile index 12 colocado en tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;

    default:
	
        //show_debug_message("Altura no reconocida: " + string(_height) + ". Coordenadas tile (" + string(tile_x) + ", " + string(tile_y) + ").");
        break;
}tileset_zid=true;
}