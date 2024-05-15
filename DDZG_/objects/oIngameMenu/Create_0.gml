/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_playerMenuOpen = false;
_owner=oPlayer;
_menuOpened=false;
_arrow=sprcursor;
_mpos=0;
_space=16;


_showtext=noone;
_alreadyDrawing=false;
_TextOnDisplay="";


_Def=1; //Defense
_Vel=4; //Velocity
_Mattack=1; //Magic Attack
_Pattack=3; //Physics Attack

_playerArrayStat[0]=_Def;
_playerArrayStat[1]=_Vel;
_playerArrayStat[2]=_Mattack;
_playerArrayStat[3]=_Pattack;


///options
enum _optionsmenu {Select_, Equip_,Equip_head,Equip_chest,Equip_hand,Inventory_,Keyobj_ } 
_actualoptionmenu=_optionsmenu.Select_;

////MAIN
_optionsmenuArray[0] = "Equipamiento";
_optionsmenuArray[1] = "Inventario";
_optionsmenuArray[2] = "Objetos Clave";
_optionsmenuArray[3] = "Acerca de . . .";
_optionsmenuArray[4] = "INFO";
_optionsmenuArray[5] = "UNDEFINED";
_optionsmenuArray[6] = "Cerrar menu";
//_optionsmenuArray[7] = "UNDEFINED";

////_EQUIP
_optionsequipArray[0] = "Atras";
_optionsequipArray[1] = "Cabeza";
_optionsequipArray[2] = "Cuerpo";
_optionsequipArray[3] = "Mano";

///HEAD 
enum _confirmoptins {_Yes, _No, }













#region HAT_STRUCT


_EMPTY = {
_Name : "_EMPTY _EMPTY _EMPTY _EMPTY" ,
_Spr : sprwitchHat, //Sprite
_Def : 1, //Defense
_Vel : 1, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "_EMPTY _EMPTY _EMPTY _EMPTY ",
_Amount : 1,
}


_witchHat = {
_Name : "Sombrero de bruja" ,
_Spr : sprwitchHat, //Sprite
_Def : 1, //Defense
_Vel : 2, //Velocity
_Mattack : 2, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "Sientes la magia fluir de este sombrero hecho con cartulina y scotch",
_Amount : 1,
}

_porcupineHat = {
_Name : "SombrErizo" ,
_Spr : sprporcupineHat, //Sprite
_Def : 2, //Defense
_Vel : 1, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "Da igual si te lo pones o te lo quitas, el pinchazo va igual",
_Amount : 1,
}

_kittyHat = {
_Name : "Nekomimis" ,
_Spr : sprkittyHat, //Sprite
_Def : 1, //Defense
_Vel : 2, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 2, //Physics Attack
_Descr : "No es una fase, mama",
_Amount : 1,
}

_constructHat = {
_Name : "Casco obrero" ,
_Spr : sprconstructhat, //Sprite
_Def : 3, //Defense
_Vel : 1, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 3, //Physics Attack
_Descr : "Mira, te ha crecido barba!",
_Amount : 1,
}

////HAT ARRAY///

///ARRAY_HAT_INVENTORY;


_arrayHat [0] = _witchHat;
_arrayHat [1] = _porcupineHat
_arrayHat [2] = _kittyHat;
_arrayHat [3] = _constructHat;



_equiphead_list=ds_list_create();
ds_list_add(_equiphead_list,0);
ds_list_add(_equiphead_list,1);

//ds_list_add(_headEquip,_arrayHat[0]);
///ds_list_add(_headEquip,_arrayHat[1]);
//ds_list_add(_headEquip,_arrayHat[2]);
///ds_list_add(_headEquip,_arrayHat[3]);
///ds_list_add(_headEquip,_arrayHat[4]);
///ds_list_add(_headEquip,_arrayHat[5]);
/*
_headEquipList = ds_list_size(_headEquip);

for (var i = 0; i < _headEquipList; i += 1)
{
	//var _findValue = ds_list_find_index()
	///show_debug_message()
    //draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
}

*/






#endregion



#region CHEST_STRUCT 

_witchDress = {
_Name : "Witch dress" ,
_Spr : sprwitchdress, //Sprite
_Def : 1, //Defense
_Vel : 2, //Velocity
_Mattack : 5, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "It smells like ashes"
}



_porcupineBagpack= {
_Name : "Porpucine Bag pack " ,
_Spr : sprwitchHat, //Sprite
_Def : 1, //Defense
_Vel : 2, //Velocity
_Mattack : 5, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "you can feel the magic power in this #paper mache hat"
}


_kittyDress= {
_Name : "KittyDress " ,
_Spr : sprkittyDress, //Sprite
_Def : 1, //Defense
_Vel : 2, //Velocity
_Mattack : 5, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "you can feel the magic power in this #paper mache hat"
}


///ARRAY_CHEST_INVENTORY;


_arrayChest [0] = 0;
_arrayChest [1] = 1;
_arrayChest [2] = _witchDress;
_arrayChest [3] = _porcupineBagpack;
_arrayChest [4] = _kittyDress;
//_arrayChest [5] = _constructHat;




_chestEquip=ds_list_create();


ds_list_add(_chestEquip,_arrayChest[0]);
ds_list_add(_chestEquip,_arrayChest[1]);
ds_list_add(_chestEquip,_arrayChest[2]);
ds_list_add(_chestEquip,_arrayChest[3]);
ds_list_add(_chestEquip,_arrayChest[4]);
//ds_list_add(_chestEquip,_arrayChest[5]);

_chestEquipList = ds_list_size(_chestEquip);

for (var i = 0; i < _chestEquip; i += 1)
{
	//var _findValue = ds_list_find_index()
	///show_debug_message()
    //draw_text(32, 32 + (i * 32), string(i) + ". "+ string(scr[i]));
}






#endregion 







#region HAND_STRUCT 

_handStructEmpty = {
_Name : "VACIO VACIO" ,
_Spr : sprwitchHat, //Sprite
_Def : 1, //Defense
_Vel : 1, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "VACIO",
_Amount : 1,
}





_umbrella = {
_Name : "paraguas" ,
_Spr : sprwitchHat, //Sprite
_Def : 1, //Defense
_Vel : 1, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "No abrir en interiores, riesgo de parecer . . .",
_Amount : 1,
}






_witchStick = {
_Name : "rama de bruja" ,
_Spr : sprwitchHat, //Sprite
_Def : 1, //Defense
_Vel : 1, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "Mas pesada de lo que parece",
_Amount : 1,
}



_bokken = {
_Name : "bokken" ,
_Spr : sprwitchHat, //Sprite
_Def : 1, //Defense
_Vel : 1, //Velocity
_Mattack : 1, //Magic Attack
_Pattack : 1, //Physics Attack
_Descr : "Simula el peso y la sensacion de un arma real.",
_Amount : 1,
}




_arrayHand [0] = _umbrella;
_arrayHand [1] = _witchStick;
_arrayHand [2] = _bokken;
///_arrayHand [3] = _constructHat;



_equiphand_list=ds_list_create();
ds_list_add(_equiphand_list,0);
ds_list_add(_equiphand_list,1);






#endregion 





#region KEY OBJ


#endregion










#region   INVENTORY EXISTENCES
inv_showed=false;


inv_emptyplace = {
_Name : "EMPTY EMPTY EMPTY",
cantidad : 0,
_Descr : "EMPTY EMPTY EMPTY",
///_Fun : global.hp_player=5,

}







inv_chokocookies = {
_Name : "Chocogalletas",
cantidad : 3,
_Descr : "[Cura + 2]",
///_Fun : global.hp_player=5,
}

inv_apple = {
_Name : "Manzana",
cantidad : 2,
_Descr : "[Cura + 2]",
///_Fun : global.hp_player=5,
}

inv_gummyfingers = {
_Name : "Gomidedos",
cantidad : 4,
_Descr : ("[Cura + 2]"),
///_Fun : 0, //global.hp_player+=5,
}

inv_doridoripicantes = {
_Name : "Doridoripicantes",
cantidad : 5,
_Descr : "[Cura Estado : Veneno]",
///_Fun : global.hp_player=5,
}
	
inv_glitter = {
_Name : "Barrita luminosa",
cantidad : 5,
_Descr : "[Luminoso! 2min]",
///_Fun : global.hp_player=5,
}

inv_badges = {
_Name : "Chapitas",
cantidad : 5,
_Descr : "[Intercambiables]",
///_Fun : global.hp_player=5,
}


inv_candymocka = {
_Name : "Dulce de mocka",
cantidad : 4,
_Descr : "[Defensa + 5 2min]",
///_Fun : global.hp_player=5,
}


inv_candymacchiato = {
_Name : "Dulce de Macchiato",
cantidad : 5,
_Descr : "[Velocidad + 5 2min]",
///_Fun : global.hp_player=5,
}


inv_candycoffemilk = {
_Name : "Dulce de CoffeMilk",
cantidad : 4,
_Descr : "[Atq Fisic. + 5 2min]",
///_Fun : global.hp_player=5,
}


inv_candycapuccino = {
_Name : "Dulce de Capuccino",
cantidad : 5,
_Descr : "[Atq Mag. + 5 2min]",
///_Fun : global.hp_player=5,
}



inv_emptyplace = {
_Name : "EMPTY EMPTY EMPTY",
cantidad : 0,
_Descr : "EMPTY EMPTY EMPTY",
///_Fun : global.hp_player=5,

}


inv_list = ds_list_create();
ds_list_add(inv_list,0);


//INVENTARY ARRAY  
inv_array[0] = inv_chokocookies;
inv_array[1] = inv_apple;
inv_array[2] = inv_gummyfingers;
inv_array[3] = inv_doridoripicantes; //
inv_array[4] = inv_glitter;
inv_array[5] = inv_candymocka;
inv_array[6] = inv_candymacchiato;
inv_array[7] = inv_candycoffemilk;
inv_array[8] = inv_candycapuccino;
inv_array[9] = inv_emptyplace;
inv_array[10] = inv_emptyplace;
inv_array[11] = inv_emptyplace;
inv_array[12] = inv_emptyplace;
inv_array[13] = inv_emptyplace;
inv_array[14] = inv_emptyplace;






#endregion



















//_actualplayerheaditem = 
////




