#macro OWNER  oPlayer

z=0;
StatColor = c_green;
PlayerStats = {

///_HP_STATS
_hpMin : 0, 
_hpMax : 12,
_hpCurrent : 12,
_staminaMin : 0,
_staminaMax : 12,
_staminaCurrent : 12,

///DATA
_name : "Saki",
_profilePicture : spr_pl_saki_portraitBase,
///_PLAYER_STATS
_statMin : 0, 
_statVel : 1,
_statPhisycAttack : 1,
_statSpecialAttack : 1,
_statLucky : 1,
_statDefense : 1,
_statSpecialDefense : 1,

}


////MENU FUNCTIONALLY

isMenuOpen=false;
canbeClosed=false;
currentWaittoBlockbutton=0;


enum _ingameMenuPage {_indexPage,_equipPage,_equipHeadPage_,_equipChestPage_,_equipHandPage_,_inventoryConsumiblePage,_inventoryKeysPage,_infoPage,_UNDEFINEDPAGE}
_currentingameMenuPage = _ingameMenuPage._indexPage;

_mPos = 0;


_ingameMenuRootOptionsArray[0] = "Equipamiento"
_ingameMenuRootOptionsArray[1] = "Inventario"
_ingameMenuRootOptionsArray[2] = "Objetos Clave"
_ingameMenuRootOptionsArray[3] = "Acerca de . . ."
_ingameMenuRootOptionsArray[4] = "INFO"
_ingameMenuRootOptionsArray[5] = "Salir a menu ext."
_ingameMenuRootOptionsArray[6] = "Cerrar Menu"

var _mainpagearrayList = array_length(_ingameMenuRootOptionsArray);
var _mainpagedsList = ds_list_create();
for (var _d =0; _d<_mainpagearrayList; _d++;) {
	  ds_list_add(_mainpagedsList, _ingameMenuRootOptionsArray[_d]);
}





_ingameMenuequipOptions[0] = "Cabeza";
_ingameMenuequipOptions[1] = "Pecho";
_ingameMenuequipOptions[2] = "Arma";
_ingameMenuequipOptions[3] = "Apariencia";
_ingameMenuequipOptions[4] = "Retroceder";




#region EQUIP


#region HEAD



_headEquip_EMPTY = {
	_equipname : "EMPTY EMPTY EMPTY EMPTY",
	__cantidad : 0,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 0,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "EMPTY EMPTY EMPTY",
	_equipset :	"Noone"
}


_headEquip_DESEQUIPAR = {
	_equipname : "DESEQUIPAR",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 0,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "DESEQUIPAR",
	_equipset :	"Noone"
}






_headEquip_RETROCEDER = {
	_equipname : "RETROCEDER",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 0,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "RETROCEDER",
	_equipset :	"Noone"
}


_headEquip_sombrespin = {
	_equipname : "Sombrespin",
	__cantidad : 0,
	_equipvel : 2,
	_equipphyssicattack : 2,
	_equipspecialattack : 0,
	_equipdefense: 2,
	_equipspecialdefense : 2,	
	_equiplucky : 1,
	_equipspritefront : spr_headequip_sombrespinFront,
	_equipspriteback : spr_headequip_sombrespinFront,
	_equipdescription : "*Se pincha*",
	_equipset :	"Set Espin"
}



_headEquip_beelmet = {
	_equipname : "Beelmet",
	__cantidad : 0,
	_equipvel : 2,
	_equipphyssicattack : 1,
	_equipspecialattack : 0,
	_equipdefense: 2,
	_equipspecialdefense : 2,	
	_equiplucky : 2,
	_equipspritefront : spr_headequip_beelmetFront,
	_equipspriteback : spr_headequip_beelmetFront,
	_equipdescription : "*Se pincha*",
	_equipset :	"Set Abeja"
}








_headEquip_kittyhears = {
	_equipname : "Kitty Hears",
	__cantidad : 0,
	_equipvel : 3,
	_equipphyssicattack : 2,
	_equipspecialattack : 1,
	_equipdefense: -1,
	_equipspecialdefense : -1,	
	_equiplucky : 2,
	_equipspritefront : spr_headequip_kittyhearsFront,
	_equipspriteback : spr_headequip_kittyhearsBack,
	_equipdescription : "Suaves y de la talla correcta",
	_equipset :	"Set CoffeMaid"
}





_headEquip_sombreroembrujado = {
	_equipname : "Sombrebrujado",
	__cantidad : 0,
	_equipvel : 2,
	_equipphyssicattack : 2,
	_equipspecialattack : 1,
	_equipdefense: -2,
	_equipspecialdefense : -1,	
	_equiplucky : 0,
	_equipspritefront : spr_headequip_sombreroembrujadoFront,
	_equipspriteback : spr_headequip_sombreroembrujadoBack,
	_equipdescription : "Vuela, aletea, flota, misteriosa y magica roca",
	_equipset :	"Set Bruja"
}



_headEquip_ornamentorosasviejas = {
	_equipname : "Ornamento rosas viejas",
	__cantidad : 0,
	_equipvel : -2,
	_equipphyssicattack : 2,
	_equipspecialattack : 0,
	_equipdefense: 2,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : spr_headequip_ornamentorosasviejasFront,
	_equipspriteback : spr_headequip_ornamentorosasviejasBack,
	_equipdescription : "Liviano de llevar, incluso sabiendo que las rosas son de cemento",
	_equipset :	"Noone"
}





_headEquipArray[0] = _headEquip_DESEQUIPAR;
_headEquipArray[1] = _headEquip_RETROCEDER;
_headEquipArray[2] = _headEquip_sombrespin;
_headEquipArray[3] = _headEquip_sombreroembrujado;
_headEquipArray[4] = _headEquip_ornamentorosasviejas;
_headEquipArray[5] = _headEquip_kittyhears;
_headEquipArray[6] = _headEquip_beelmet;
_headEquipArray[7] = _headEquip_EMPTY;

_headEquipDsList = ds_list_create();
ds_list_add(_headEquipDsList,_headEquipArray[0],_headEquipArray[1]);


#endregion










#region CHEST


_chestEquip_DESEQUIPAR = {
	_equipname : "DESEQUIPAR",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 0,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "DESEQUIPAR",
	_equipset :	"Noone"
}






_chestEquip_RETROCEDER = {
	_equipname : "RETROCEDER",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 0,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "RETROCEDER",
	_equipset :	"Noone"
}




_chestEquip_EMPTY = {
	_equipname : "EMPTY EMPTY EMPTY EMPTY",
	__cantidad : 0,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 1,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "EMPTY EMPTY EMPTY",
	_equipset :	"Noone"
}



_chestEquip_reinadecorazones = {
	_equipname : "Reina de Corazones",
	__cantidad : 0,
	_equipvel : 0,
	_equipphyssicattack : 3,
	_equipspecialattack : 0,
	_equipdefense: 1,
	_equipspecialdefense : -1,	
	_equiplucky : 0,
	_equipspritefront : sprKittyMaid,
	_equipspriteback : sprKittyMaid,
	_equipdescription : "Tiene una fragancia a pastel y moras",
	_equipset :	"Set CoffeMaid"
}



_chestEquip_beecap = {
	_equipname : "BeeCap",
	__cantidad : 0,
	_equipvel : 2,
	_equipphyssicattack : 0,
	_equipspecialattack : 1,
	_equipdefense: 1,
	_equipspecialdefense : 1,	
	_equiplucky : 0,
	_equipspritefront : spr_dressequip_beelcapFront,
	_equipspriteback : spr_dressequip_beelcapFront,
	_equipdescription : "Tiene una fragancia a pastel y moras",
	_equipset :	"Set Abeja"
}




_chestEquip_vestidodebruja = {
	_equipname : "Vestido de bruja",
	__cantidad : 0,
	_equipvel : 2,
	_equipphyssicattack : 0,
	_equipspecialattack : 4,
	_equipdefense: 1,
	_equipspecialdefense : -2,	
	_equiplucky : 0,
	_equipspritefront : sprWithDress,
	_equipspriteback : sprWithDress,
	_equipdescription : "el vestido esta maldito, hasta los lindos broches de calavera",
	_equipset :	"Set Bruja"
}


//sprWithDress


_chestEquipArray[0] = _chestEquip_DESEQUIPAR;
_chestEquipArray[1] = _chestEquip_RETROCEDER;
_chestEquipArray[2] = _chestEquip_reinadecorazones;
_chestEquipArray[3] = _chestEquip_vestidodebruja;
_chestEquipArray[4] = _chestEquip_beecap;
_chestEquipArray[5] = _chestEquip_EMPTY;
//_chestEquipArray[1] = chestEquip_sombreroembrujado;
//_chestEquipArray[2] = chestEquip_ornamentorosasviejas;


_chestEquipDsList = ds_list_create();
ds_list_add(_chestEquipDsList,_chestEquipArray[0],_chestEquipArray[1]);

#endregion


#region HAND

_handEquip_DESEQUIPAR = {
	_equipname : "DESEQUIPAR",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 0,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "DESEQUIPAR",
	_equipset :	"Noone"
}





_handEquip_RETROCEDER = {
	_equipname : "RETROCEDER",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 0,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "RETROCEDER",
	_equipset :	"Noone"
}



_handEquip_EMPTY = {
	_equipname : "EMPTY EMPTY EMPTY EMPTY",
	__cantidad : 0,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 1,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "EMPTY EMPTY EMPTY",
	_equipset :	"Noone"
}



_handEquip_umbrella = {
	_equipname : "Sombrilla",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 2,
	_equipspecialattack : 1,
	_equipdefense: 1,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : spr_paragua,
	_equipspriteback : spr_paragua,
	_equipdescription : "Firme Acero de imitacion",
	_equipset :	"Noone"
}





_handEquip_candybat = {
	_equipname : "Bat de dulce",
	__cantidad : 1,
	_equipvel : 1,
	_equipphyssicattack : 0,
	_equipspecialattack : 1,
	_equipdefense: 1,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : sprKittyMaid,
	_equipspriteback : sprKittyMaid,
	_equipdescription : "Firme Dulce plastico de imitacion",
	_equipset :	"Noone"
}




_handEquip_martillo = {
	_equipname : "Martillo",
	__cantidad : 1,
	_equipvel : 3,
	_equipphyssicattack : 2,
	_equipspecialattack : 0,
	_equipdefense: 2,
	_equipspecialdefense : 0,	
	_equiplucky : 0,
	_equipspritefront : sprKittyMaid,
	_equipspriteback : sprKittyMaid,
	_equipdescription : "Firme Texto de prueba de imitacion",
	_equipset :	"Noone"
}







_handEquip_bubbleblaster = {
	_equipname : "Bubble Blaster",
	__cantidad : 1,
	_equipvel : 2,
	_equipphyssicattack : 1,
	_equipspecialattack : 1,
	_equipdefense: 1,
	_equipspecialdefense : 0,	
	_equiplucky : 4,
	_equipspritefront : sprKittyMaid,
	_equipspriteback : sprKittyMaid,
	_equipdescription : "Firme Texto de prueba de imitacion",
	_equipset :	"Noone"
}



_handEquip_beecane = {
	_equipname : "Beecane",
	__cantidad : 0,
	_equipvel : 2,
	_equipphyssicattack : 1,
	_equipspecialattack : 1,
	_equipdefense: 1,
	_equipspecialdefense : 0,	
	_equiplucky : 4,
	_equipspritefront : spr_beepon,
	_equipspriteback : spr_beepon,
	_equipdescription : "Firme Texto de prueba de imitacion",
	_equipset :	"Set Abeja"
}

_handEquip_knife = {
	_equipname : "Cuchillo Afilado",
	__cantidad : 0,
	_equipvel : 2,
	_equipphyssicattack : 1,
	_equipspecialattack : 1,
	_equipdefense: 1,
	_equipspecialdefense : 0,	
	_equiplucky : 4,
	_equipspritefront : spr_knife,
	_equipspriteback : spr_knife,
	_equipdescription : "Por alguna razon te sientes mas Indie",
	_equipset :	"Noone"
}






_handEquipArray[0] = _handEquip_DESEQUIPAR;
_handEquipArray[1] = _handEquip_RETROCEDER;
_handEquipArray[2] = _handEquip_candybat;
_handEquipArray[3] = _handEquip_martillo;
_handEquipArray[4] = _handEquip_bubbleblaster;
_handEquipArray[5] = _handEquip_beecane;
_handEquipArray[6] = _handEquip_umbrella;
_handEquipArray[7] = _handEquip_knife;


_handEquipDsList = ds_list_create();

ds_list_add(_handEquipDsList,_handEquipArray[0],_handEquipArray[1]);



//_chestEquipArray[1] = chestEquip_sombreroembrujado;
//_chestEquipArray[2] = chestEquip_ornamentorosasviejas;



#endregion




#endregion



function _arraytodslist(_array) {

var _createddslist = ds_list_create();

for (var _k = 0; _k<array_length(_array); _k++) {
	ds_list_add(_createddslist,_array[_k]);
	} return _createddslist;
}






#region   INVENTORY EXISTENCES
inv_showed=false;



inv_emptyplace = {
    _Name: "EMPTY EMPTY EMPTY",
    _Descr: "EMPTY EMPTY EMPTY",
    _Funct: "",
    _FunctEffect: oPlayer._effConfusion,
    _cantidad: 0
};

inv_RETROCEDER = {
    _Name: "RETROCEDER",
    _Descr: "RETROCEDER",
    _FunctEffect: oPlayer._effFear,
    _cantidad: 1
};

inv_chokocookies = {
    _Name: "Chocogalletas",
    _Descr: "[Cura + 2]",
    _FunctEffect: oPlayer._effConfusion,
    _cantidad: irandom_range(1, 10)
};

inv_apple = {
    _Name: "Manzana",
    _Descr: "[Cura + 2]",
    _FunctEffect: oPlayer._effFear,
    _cantidad: irandom_range(1, 10)
};

inv_gummyfingers = {
    _Name: "Gomidedos",
    _Descr: "[Cura + 2]",
    _FunctEffect: oPlayer._effLevelthreeBurned,
    _cantidad: irandom_range(1, 10)
};

inv_doridoripicantes = {
    _Name: "Doridoripicantes",
    _Descr: "[Cura Estado : Veneno]",
    _FunctEffect: oPlayer._effUpcanLook,
    _cantidad: irandom_range(1, 10)
};

inv_glitter = {
    _Name: "Barrita luminosa",
    _Descr: "[Luminoso! #2min]",
    _FunctEffect: oPlayer._effLevelfiveDissipationofego,
    _cantidad: irandom_range(1, 10)
};

inv_badges = {
    _Name: "Chapitas",
    _Descr: "[Intercambiables]",
    _FunctEffect: oPlayer._effDownDowncanLook,
    _cantidad: irandom_range(1, 10)
};

inv_candymocka = {
    _Name: "Dulce de mocka",
    _Descr: "[Defensa + 5 #2min]",
    _FunctEffect: oPlayer._effLeveltwoDissipationofego,
    _cantidad: irandom_range(1, 10)
};

inv_candymacchiato = {
    _Name: "Dulce de Macchiato",
    _Descr: "[Velocidad + 5 2min]",
    _FunctEffect: oPlayer._effLeveloneBurned,
    _cantidad: irandom_range(1, 10)
};

inv_candycoffemilk = {
    _Name: "Dulce de CoffeMilk",
    _Descr: "[Atq Fisic. + 5 2min]",
    _FunctEffect: oPlayer._effUpUpcanLook,
    _cantidad: irandom_range(1, 10)
};

inv_candycapuccino = {
    _Name: "Dulce de Capuccino",
    _Descr: "[Atq Mag. + 5 2min]",
    _FunctEffect: oPlayer._effLeveltwoPoisoned,
    _cantidad: irandom_range(1, 10)
};




/*

_effArray[0] = _effUpcanLook;
_effArray[1] = _effUpUpcanLook;
_effArray[2] = _effUpHealt;
_effArray[3] = _effUpUpHealt;
_effArray[4] = _effDowncanLook;
_effArray[5] = _effDownDowncanLook;
_effArray[6] = _effDownHealt;
_effArray[7] = _effUpDownDownHealt;
_effArray[8] = _EffProhibitedHealt;
_effArray[9] = _effLeveloneBurned;
_effArray[10] = _effLeveltwoBurned;
_effArray[11] = _effLevelthreeBurned;
_effArray[12] = _effLevelonePoisoned;
_effArray[13] = _effLeveltwoPoisoned;
_effArray[14] = _effLevelthreePoisoned;
_effArray[15] = _effLeveloneDissipationofego;
_effArray[16] = _effLeveltwoDissipationofego;
_effArray[17] = _effLevelthreeDissipationofego;
_effArray[18] = _effLevelfourDissipationofego;
_effArray[19] = _effLevelfiveDissipationofego;
_effArray[20] = _effConfusion;
_effArray[21] = _effFear;


*/

//inv_list = ds_list_create();
//ds_list_add(inv_list,0);


//INVENTARY ARRAY  
inv_array[0] = inv_RETROCEDER;
inv_array[1] = inv_chokocookies;
inv_array[2] = inv_apple;
inv_array[3] = inv_gummyfingers;
inv_array[4] = inv_doridoripicantes; //
inv_array[5] = inv_glitter;
inv_array[6] = inv_candymocka;
inv_array[7] = inv_candymacchiato;
inv_array[8] = inv_candycoffemilk;
inv_array[9] = inv_candycapuccino;
inv_array[10] = inv_emptyplace;
inv_array[11] = inv_emptyplace;
inv_array[12] = inv_emptyplace;
inv_array[13] = inv_emptyplace;
inv_array[14] = inv_emptyplace;
inv_array[15] = inv_emptyplace;

_invDsList = ds_list_create();




#endregion


#region		INVENTORY_KEYOBJECT

invkey_emptyplace = {
_Name : "EMPTY EMPTY EMPTY",
_cantidad : 0,
_Descr : "EMPTY EMPTY EMPTY",


}



invkey_simplekey = {
_Name : "Llave simple",
_cantidad : 0,
_Descr : "Con un colgante Azul -Uso comun- ",


}


invkey_serviceskey = {
_Name : "Llave de servicios",
_cantidad : 0,
_Descr : "Con un colgante Verde -Uso servicios- ",
}




invkey_simplekey = {
_Name : "Llave de servicios",
_cantidad : 0,
_Descr : "Con un colgante Verde -Uso servicios- ",
}


invkey_spaceskey = {
_Name : "Llave de espacios",
_cantidad : 0,
_Descr : "Con un colgante Morado -Uso espacios- ",
}


invkey_map = {
_Name : "Mapa",
_cantidad : 0,
_Descr : "Descripcion pendiente",
}



invkey_lantern = {
_Name : "Linterna",
_cantidad : 0,
_carga : 100,
_Descr : "Pilas AA",
}



#endregion

