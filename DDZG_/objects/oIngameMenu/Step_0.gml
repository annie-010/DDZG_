/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var _keyaction,_keyback
_keyaction = keyboard_check_pressed(ord("I"));
_keyback = keyboard_check_pressed(ord("U"));


if instance_exists(oPlayer) {

if _owner._menuOpened==false {
	
	///show_debug_message("El menú está cerrado!");
	visible=0;
	
////instance_destroy();
} else if  _owner._menuOpened!=false {
////show_debug_message("El menú está abierto!");
visible=1;



///if _keyback {
//_owner._menuOpened=false;
//_menuOpened=false;
//
//}

///var _keyup,_keydown,_keyleft,_keyright;

//_keyup = keyboard_check_pressed(ord("W"));
//_keydown = keyboard_check_pressed(ord("S"));
//_keyleft = keyboard_check_pressed(ord("A"));
//_keyright = keyboard_check_pressed(ord("D"));


switch _actualoptionmenu
{
case _optionsmenu.Select_:

if _keyback {
	
///_actualoptionmenu=_optionsmenu.Select_;
_menuOpened=false;
_owner._menuOpened=false;
_mpos=0;
///show_debug_message("Nos encontramos probando el boton de rtroceso");

//_owner.ActualPlayerState=PlayerStates.Stand;
	//_keyback=false;
}


_ArrayListSelectablePad(_mpos,_optionsmenuArray);



if _keyaction {

switch _mpos {

case 0: _actualoptionmenu=_optionsmenu.Equip_; _mpos=0;
break;


case 1: _actualoptionmenu=_optionsmenu.Inventory_; _mpos=0;
break;



case 2:
break;




case 3:
break;




case 4:
break;




case 5:
break;




case 6: _menuOpened=false;
_owner._menuOpened=false;
_mpos=0;////game_restart();
break;




}


}





break;


case _optionsmenu.Equip_:


if _keyback {
	_actualoptionmenu=_optionsmenu.Select_;
	_keyback=false;
	_mpos=0;}
_ArrayListSelectablePad(_mpos,_optionsequipArray);

if _keyaction {
switch _mpos {	
	
	case 0: _actualoptionmenu=_optionsmenu.Select_; _mpos=0; _keyaction=false;
	break;
	
	case 1: _actualoptionmenu=_optionsmenu.Equip_head; _mpos=0; _keyaction=false;
	break;
	
	case 2: _actualoptionmenu=_optionsmenu.Equip_chest; _mpos=0;  _keyaction=false;
	break;

	case 3: _actualoptionmenu=_optionsmenu.Equip_hand; _mpos=0;  _keyaction=false;
	break;
	
	
	
}

}


break;





#region ///EQUIP


case _optionsmenu.Equip_head:


if _keyback {
_actualoptionmenu=_optionsmenu.Select_;
_mpos=0;
_keyback=false;
ds_list_clear(_equiphead_list);
ds_list_add(_equiphead_list,0); ds_list_add(_equiphead_list,1);
}


if ds_list_empty(_equiphead_list) {
ds_list_add(_equiphead_list,0); ds_list_add(_equiphead_list,1);} else if (!ds_list_empty(_equiphead_list)) {_DSListSelectablePad(_mpos,_equiphead_list);}//_ArrayListSelectablePad

var _Equiphead_actualitem, _Equiphead_amount,_Equiphead_arraysize;


_Equiphead_actualitem=0;
_Equiphead_amount=noone;
_Equiphead_arraysize=array_length(_arrayHat);


if  ds_list_size(_equiphead_list)==2 {

for (_k = 0; _k < _Equiphead_arraysize; _k+=1) {

if _arrayHat[_k]._Amount!=0 {
ds_list_add(_equiphead_list,_arrayHat[_k])}}}




if _keyaction {var _val = ds_list_find_value(_equiphead_list,_mpos);

if _val==0 {_actualoptionmenu=_optionsmenu.Equip_; _mpos=0;} else if 
_val==1 {
		_owner._actualInventory._head=noone; _mpos=0;
	_actualoptionmenu=_optionsmenu.Equip_;
	
}

else if _val!=0 && _val!=1 {
	_owner._actualInventory._head=_val; _mpos=0;
	_actualoptionmenu=_optionsmenu.Equip_;}
}










break;






case _optionsmenu.Equip_chest:

if _keyback {
	
	_actualoptionmenu=_optionsmenu.Equip_;
	_mpos=0;
	_keyback=false;
}
if _keyaction {var _val = ds_list_find_value(_chestEquip,_mpos);

if _val==0 {_actualoptionmenu=_optionsmenu.Equip_; _mpos=0;} else if 
_val==1 {
		_owner._actualInventory._chest=noone; _mpos=0;
	_actualoptionmenu=_optionsmenu.Equip_;
	
}

else if _val!=0 && _val!=1 {
	_owner._actualInventory._chest=_val;
	var comprobante = _owner._actualInventory._chest
	_mpos=0; show_debug_message("chest equip = " + string(comprobante));
	_actualoptionmenu=_optionsmenu.Equip_;}
}

_ArrayListSelectablePad(_mpos,_arrayChest);


break;





case _optionsmenu.Equip_hand:

if _keyback {
_actualoptionmenu=_optionsmenu.Select_;
_mpos=0;
_keybkac=false;
ds_list_clear(_equiphand_list);
ds_list_add(_equiphand_list,0); ds_list_add(_equiphand_list,1); 
}

if ds_list_empty(_equiphand_list) {ds_list_add(_equiphand_list,0); ds_list_add(_equiphand_list,1); 
} else if !(ds_list_empty(_equiphead_list)) {_DSListSelectablePad(_mpos,_equiphand_list);}

var _equiphand_actualitem, _equiphandamount, _equiphand_arraysize;

_equiphand_actualitem=0; _equiphandamount=noone; _equiphand_arraysize=array_length(_arrayHand);

if ds_list_size(_equiphand_list)==2 {

for (_v=0; _v < _equiphand_arraysize; _v+=1) {
if _arrayHand[_v]._Amount!=0 {
ds_list_add(_equiphand_list,_arrayHand[_v])}}}



if _keyaction {var _val= ds_list_find_value(_equiphand_list,_mpos);
if _val==0 {_actualoptionmenu= _optionsmenu.Equip_; _mpos=0;} else if _val ==1 {
_owner._actualInventory_hand=noone; _mpos=0; 
_actualoptionmenu=_optionsmenu.Equip_;
}
}




break;





#endregion







case _optionsmenu.Inventory_:



if _keyback {
	_actualoptionmenu=_optionsmenu.Select_
	_mpos=0;
	_keyback=false;
	
	ds_list_clear(inv_list);
	ds_list_add(inv_list,0);}



var inv_actualitem,inv_cantidad,inv_arraysize
inv_actualitem=0;
inv_cantidad=noone;
inv_arraysize = array_length(inv_array);



if  ds_list_size(inv_list)==1 {

for (_k = 0; _k < inv_arraysize; _k+=1) {

if inv_array[_k].cantidad!=0 {
ds_list_add(inv_list,inv_array[_k])}}}



if ds_list_empty(inv_list) {
ds_list_add(inv_list,0);} else if (!ds_list_empty(inv_list)) {_DSListSelectablePad(_mpos,inv_list);}



if !ds_list_empty(inv_list) && ds_list_size>1 {
	
	
	if _keyaction {
var _valDs,_structName,
_valDs = ds_list_find_value(inv_list,_mpos);
_structName = "0";
	if _valDs!=0 { _valDs.cantidad-=1; ///show_debug_message(string(_valDs)); 
		_InventoryNormalItemsFunction(inv_list,_valDs._Name);
		_actualoptionmenu=_optionsmenu.Select_
		_mpos=0;
		_keyback=false;
		ds_list_clear(inv_list);
	ds_list_add(inv_list,0);
	} else if _valDs==0 {	_actualoptionmenu=_optionsmenu.Select_;
	_mpos=0;
	_keyback=false;
	ds_list_clear(inv_list);
	ds_list_add(inv_list,0);}}}

break;



case _optionsmenu.Keyobj_:
break;


}


	
}}


///enum _optionsmenu {Select_, Equip_,Inventory_,keyobj_ } 































