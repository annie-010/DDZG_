#region DIBUJAR MENU







switch(_menuOpened) {

case true:

var cam = view_get_camera(0);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);


//camera_set_view_pos(cam, mouse_x - (cw / 2), mouse_y - (ch / 2));

draw_sprite(sprItemMenuwhiteblack,0,630,124);
draw_set_color(c_black);
draw_set_font(fnt_GUI_Title);
draw_text(664,100,"Menu");

draw_set_font(fnt_GUI_Text);

var startX = 664; // Posición inicial X para dibujar el texto
var startY = 192; // Posición inicial Y para dibujar el texto
var spacing = 64; // Espaciado entre cada opción de menú



switch _actualoptionmenu
{
case _optionsmenu.Select_:

for (var i = 0; i < array_length(_optionsmenuArray); i++) {
    draw_text(startX, startY + (i * spacing), _optionsmenuArray[i]);
}
draw_sprite(_arrow,0,(startX-32), (startY+16) + spacing * _mpos);



break;




case _optionsmenu.Equip_:

for (var i = 0; i < array_length(_optionsequipArray); i++) {
    draw_text(startX, startY + (i * spacing), _optionsequipArray[i]);
}
draw_sprite(_arrow,0,(startX-32), (startY+16) + spacing * _mpos);


break;


case _optionsmenu.Equip_head:


draw_sprite(_arrow,0,(startX-32), (startY+16) + spacing * _mpos);
var acces__headEquip = _headEquip;

if !ds_list_empty(_headEquip) {


for (_i = 0; _i < ds_list_size(acces__headEquip); _i += 1) {
	var hatStruct = ds_list_find_value(acces__headEquip,_i);
	
	var hatStructName = "0";
	
	
	
	
	
	
	
	if hatStruct!=0 {hatStructName=hatStruct._Name;    
		
		    draw_text(startX, startY + (_i * spacing), hatStructName);
		
		
		}
	else if hatStruct==0 {hatStructName="Back"
		
		
		    draw_text(startX, startY + (_i * spacing), hatStructName);
		
		
		}
	
	
	///var hatStructName = hatStruct._Name;
	
	show_debug_message(acces__headEquip);
	
    ///var hatStruct = ds_list_find_index(_headEquip, _i);
	//show_debug_message(hatStruct);
	
    //var hatName = hatStruct._Name;

}


}



///for (_i=0; _i <ds_list_size(_headEquip); _i+=1){
//draw_text(startX,startY+(_i * spacing), ds_list_find_value(_headEquip, _i));
//}}

break;


}

case false:
///visible=0;

break;



}


#endregion 




///if keyboard_check_pressed(ord("K")) {
	
	///show_message("TIENES NO SE CUANTAS PERAS CULIAS");

///}
