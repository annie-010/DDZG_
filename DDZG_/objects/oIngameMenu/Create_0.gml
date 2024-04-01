/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_playerMenuOpen = false;
_owner=oPlayer;
_menuOpened=false;
_arrow=sprcursor;
_mpos=0;
_space=16;





///options
enum _optionsmenu {Select_, Equip_,Equip_head,Equip_chest,Equip_hand,Inventory_,Keyobj_ } 
_actualoptionmenu=_optionsmenu.Select_;

////MAIN
_optionsmenuArray[0] = "EQUIP";
_optionsmenuArray[1] = "INVENTORY";
_optionsmenuArray[2] = "KEYOJB";
_optionsmenuArray[3] = "UNDEFINED";
_optionsmenuArray[4] = "UNDEFINED";

////_EQUIP
_optionsequipArray[0] = "HEAD";
_optionsequipArray[1] = "CHEST";
_optionsequipArray[2] = "HAND";

///HEAD 


//////////////////////////////


_witchHat = {
_Name : "Witch hat" ,
_Spr : sprwitchHat, //Sprite
_Def : 1, //Defense
_Vel : 2, //Velocity
_Mattack : 5, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "you can feel the magic power in this paper mache hat"
}

_porcupineHat = {
_Name : "Porpucine Hat" ,
_Spr : sprporcupineHat, //Sprite
_Def : 3, //Defense
_Vel : 2, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 3, //Physics Attack
_Descr : "You got a puncture when you put it on, you'll get a puncture when you take it off."
}

_kittyHat = {
_Name : "Kitty hat" ,
_Spr : sprkittyHat, //Sprite
_Def : 1, //Defense
_Vel : 4, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 3, //Physics Attack
_Descr : "You feel a strange urge to eat tuna"
}

_constructHat = {
_Name : "Construct hat" ,
_Spr : sprconstructHat, //Sprite
_Def : 1, //Defense
_Vel : 4, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 3, //Physics Attack
_Descr : "Hop!, hammer, Hop!"
}

///ARRAY_INVENTORY;
///_arrayHat [0] = noone;
_arrayHat [1] = _witchHat;
_arrayHat [2] = _porcupineHat
_arrayHat [3] = _kittyHat;
_arrayHat [4] = _constructHat;




_headEquip=ds_list_create();


ds_list_add(_headEquip,_arrayHat[0]);
ds_list_add(_headEquip,_arrayHat[1]);
ds_list_add(_headEquip,_arrayHat[2]);
ds_list_add(_headEquip,_arrayHat[3]);
ds_list_add(_headEquip,_arrayHat[4]);

headEquip = ds_list_size(_headEquip);

for (var i = 0; i < headEquip; i += 1)
{
	//var _findValue = ds_list_find_index()
	///show_debug_message()
    //draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
}


//_actualplayerheaditem = 



