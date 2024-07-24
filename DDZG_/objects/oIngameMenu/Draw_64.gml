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

//draw_set_font(fnt_GUI_Text); draw_set_font(fnt_GUI_Title);
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
var acces__headEquip = _equiphead_list;

if !ds_list_empty(acces__headEquip) {


for (_i = 0; _i < ds_list_size(acces__headEquip); _i += 1) {
	var hatStruct = ds_list_find_value(acces__headEquip,_i);
	
	///var hatStructName = "0";

	
	if hatStruct!=0  && hatStruct!=1 {hatStructName=hatStruct._Name; 
		draw_text(startX, startY + (_i * spacing), hatStructName);

		var _itemselectedshowdesc = ds_list_find_value(hatStruct,_mpos);
		
		
		
		draw_set_font(fnt_GUI_Text);
		if _itemselectedshowdesc!=0 && _itemselectedshowdesc!=1 {
			
		///DRAW BONUS EQUIP
		
		#region DRAW BONUS EQUIPO
		// Dibujar el sprite
		///var sprx_init, spry_init
		///sprx_init=84;
		///spry_init=124;
		
		draw_sprite(sprcharequip,0,84,124);	
		
		var _itemselected_Def =  _itemselectedshowdesc._Def;
		var _itemselected_Vel =  _itemselectedshowdesc._Vel;
		var _itemselected_Mattack =  _itemselectedshowdesc._Mattack;
		var _itemselected_Pattack =  _itemselectedshowdesc._Pattack;


_arrayBonusName[0]="Def";
_arrayBonusName[1]="Vel";
_arrayBonusName[2]="Magic ATK";
_arrayBonusName[3]="Physical ATK";




_arrayItemBonus[0]=_itemselected_Def;
_arrayItemBonus[1]=_itemselected_Vel;
_arrayItemBonus[2]=_itemselected_Mattack;
_arrayItemBonus[3]=_itemselected_Pattack;



for (var _v = 0; _v < array_length(_arrayItemBonus); _v += 1) {

draw_text(112, 160 + (_v * spacing), string(_arrayBonusName[_v])); 

draw_text(270,160 + (_v * spacing) ," : " + string(_playerArrayStat[_v]));


draw_set_color(c_red);
draw_text(300, 160 + (_v * spacing),"  +"+ string(_arrayItemBonus[_v])); 
draw_set_color(c_black);
}

		
		#endregion
		
		

		
		//DRAW DESCRIPTION
		draw_sprite(sprDesc,0,84,483);  draw_text(144,465,"DESC.");	
		var _itemselecteddesc = _itemselectedshowdesc._Descr;
		var _itemselectedStringcount = string_length(_itemselecteddesc);
		if _itemselectedStringcount>30 { draw_text_ext(110,530,_itemselecteddesc,30,400);} else {draw_text(110,530,_itemselecteddesc);}} }
		
		
		///DRAW NOT EQUIPABLE OPTIONS, OUT, EXIT, ETC
	else if hatStruct==0 {hatStructName="Back" draw_text(startX, startY + (_i * spacing), hatStructName);}
	else if hatStruct==1 {hatStructName="Desequipar" draw_text(startX, startY + (_i * spacing), hatStructName);}
	

	
	show_debug_message(acces__headEquip);  
	
 

}


}



break;









case _optionsmenu.Equip_chest:  //DRAW CHEST SELECTION



draw_sprite(_arrow,0,(startX-32), (startY+16) + spacing * _mpos);


var acces_chestEquip = _chestEquip;
if !ds_list_empty(acces_chestEquip) {

for (_i = 0; _i < ds_list_size(acces_chestEquip); _i += 1) {
var chestStruct = ds_list_find_value(acces_chestEquip,_i);
var chestStructName = "0";




	
	if chestStruct!=0  && chestStruct!=1 {chestStructName=chestStruct._Name;    
		
		    draw_text(startX, startY + (_i * spacing), chestStructName);
		
		
		}
	else if chestStruct==0 {chestStructName="Back" draw_text(startX, startY + (_i * spacing), chestStructName);}
	else if chestStruct==1 {chestStructName="Desequipar" draw_text(startX, startY + (_i * spacing), chestStructName);}

	
	show_debug_message(acces_chestEquip);
	


}

}



break;


case _optionsmenu.Equip_hand:
draw_sprite(_arrow,0,(startX-32), (startY+16) + spacing * _mpos);









var acces_handEquip = _equiphand_list;
if !ds_list_empty(acces_handEquip) {

for (_i = 0; _i < ds_list_size(acces_handEquip); _i += 1) {
var handStruct = ds_list_find_value(acces_handEquip,_i);
var handStructName = "0";




	
	if handStruct!=0  && handStruct!=1 {handStructName=handStruct._Name;    
		
		    draw_text(startX, startY + (_i * spacing), handStructName);
		
		
		}
	else if handStruct==0 {handStructName="Back" draw_text(startX, startY + (_i * spacing), handStructName);}
	else if handStruct==1 {handStructName="Desequipar" draw_text(startX, startY + (_i * spacing), handStructName);}

	
	show_debug_message(acces_handEquip);
	


}

}












break;







///_optionsmenu.

case _optionsmenu.Inventory_: /////////////////INVENTORY/////////////////////////////



var _mposinventoryStartY = 192;
var _mposInit = 0;

if !(ds_list_empty(inv_list)) {
	

	
	
var _dslistsize = ds_list_size(inv_list);
var _showLimit = 7;
show_debug_message("_mpos actual : " + string(_mpos));

if _mpos<7 {
var _limitds = min(_showLimit, ds_list_size(inv_list));
draw_sprite(_arrow,0,(startX-32), (_mposinventoryStartY+16) + spacing * _mpos);	

	
	
for (var _j = 0; _j < _limitds; _j+=1){
	var _inventoryItem = ds_list_find_value(inv_list,_j);
	var _inventoryItemname = "";
	var _itemAmount = "";
	
	if (_inventoryItem!=0 && _inventoryItem!=1)  { //&& _inventoryItem<_showLimit
		
		
		//
		
		var _itemSelected_mpos = ds_list_find_value(inv_list,_mpos);

		
		if _itemSelected_mpos!=0 {
			
		draw_set_font(fnt_GUI_Title);
		draw_sprite(sprDesc,0,84,483); draw_text(144,465,"DESC.")
		draw_set_font(fnt_GUI_Text); 
			
			
			
			
		show_debug_message("_mposSelected : " + string(_itemSelected_mpos));
		var _itemselected_desc = _itemSelected_mpos._Descr;
		show_debug_message("Desc : " + string(_itemselected_desc));
		
		var _itemselectedStringcount = string_length(_itemselected_desc);
		if _itemselectedStringcount>30 { draw_text_ext(110,530,_itemselected_desc,30,400);} else {draw_text(110,530,_itemselected_desc);}}
		
		/*
		draw_sprite(sprDesc,0,84,483);  draw_text(144,465,"DESC.");	
		
		var _itemselected_mpos =  ds_list_find_value(inv_list,_mpos);
		var _itemselected_desc = _itemselected_mpos._Descr;
		
		if _itemselected_mpos!=0{
				
		
		
		*/

		
		
		_inventoryItemname=_inventoryItem._Name;  _itemAmount=_inventoryItem.cantidad;
		draw_text(startX, _mposinventoryStartY + (_j * spacing), _inventoryItemname);
draw_text(startX + 248 , _mposinventoryStartY + (_j * spacing), "x " + (string(_itemAmount)));

		
		} else if _inventoryItem==0 {
		{_inventoryItemname="Back" draw_text(startX, _mposinventoryStartY + (_j * spacing), _inventoryItemname);}
		
		}
		
		///{}
}
} else if _mpos>6 {
	

draw_sprite(_arrow,0,(startX-32), (_mposinventoryStartY+16) + spacing * (_mpos-7));	
	

for (var _j = 7; _j < _dslistsize; _j+=1){
	var _inventoryItem = ds_list_find_value(inv_list,_j);
	var _inventoryItemname = "";
	var _itemAmount = "";
	
	if (_inventoryItem!=0 && _inventoryItem!=1) //&& _inventoryItem<_showLimit 
	
	
	{
		
		_inventoryItemname=_inventoryItem._Name;  _itemAmount=_inventoryItem.cantidad;
		
		
		draw_text(startX, _mposinventoryStartY + (_mposInit * spacing), _inventoryItemname);
draw_text(startX + 248 , _mposinventoryStartY + (_mposInit * spacing), "x " + (string(_itemAmount))); _mposInit+=1;}}


		var _itemSelected_mpos = ds_list_find_value(inv_list,_mpos);

		
		if _itemSelected_mpos!=0 {
			
		draw_set_font(fnt_GUI_Title);
		draw_sprite(sprDesc,0,84,483); draw_text(144,465,"DESC.")
		draw_set_font(fnt_GUI_Text); 
			
			
			
			
		show_debug_message("_mposSelected : " + string(_itemSelected_mpos));
		var _itemselected_desc = _itemSelected_mpos._Descr;
		show_debug_message("Desc : " + string(_itemselected_desc));
		
		var _itemselectedStringcount = string_length(_itemselected_desc);
		if _itemselectedStringcount>30 { draw_text_ext(110,530,_itemselected_desc,30,400);} else {draw_text(110,530,_itemselected_desc);}}




}}





break;














}

case false:
///visible=0;

break;



}


#endregion 


