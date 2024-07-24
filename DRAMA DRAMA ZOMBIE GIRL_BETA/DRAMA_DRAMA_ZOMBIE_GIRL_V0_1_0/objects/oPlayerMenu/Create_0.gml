#macro OWNER oPlayer

z=0;
StatColor = c_green;
PlayerStats = {

///_HP_STATS
_hpMin : 0, 
_hpMax : 12,
_hpCurrent : 12,

///DATA
_name : "Saki",

///_PLAYER_STATS
_statMin : 0, 
_statVel : 2,
_statPhisycAttack : 3,
_statSpecialAttack : 1,
_statLucky : 1,
_statDefense : 1,

}


////MENU FUNCTIONALLY

isMenuOpen=false;

enum _ingameMenuPage {_indexPage,_equipPage,_equipHeadPage_,_equipChestPage_,_equipHandPage_,_inventoryConsumiblePage,_inventoryKeysPage,_infoPage,_UNDEFINEDPAGE}
_currentingameMenuPage = _ingameMenuPage._indexPage;

_mPos = 0;


_ingameMenuRootOptionsArray[0] = "Equipamiento"
_ingameMenuRootOptionsArray[1] = "Inventario"
_ingameMenuRootOptionsArray[2] = "Objetos Clave"
_ingameMenuRootOptionsArray[3] = "Acerca de . . ."
_ingameMenuRootOptionsArray[4] = "INFO"
_ingameMenuRootOptionsArray[5] = "UNDEFINED"
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
	_equipdefense: 1,
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "EMPTY EMPTY EMPTY",
	_equipset :	"Noone"
}


_headEquip_sombrespin = {
	_equipname : "Sombrespin",
	__cantidad : 1,
	_equipvel : 1,
	_equipphyssicattack : 1,
	_equipspecialattack : 0,
	_equipdefense: 1,
	_equiplucky : 0,
	_equipspritefront : spr_headequip_sombrespinFront,
	_equipspriteback : spr_headequip_sombrespinFront,
	_equipdescription : "*Se pincha*",
	_equipset :	"Set Espin"
}



_headEquip_sombreroembrujado = {
	_equipname : "Sombrebrujado",
	__cantidad : 1,
	_equipvel : 2,
	_equipphyssicattack : 0,
	_equipspecialattack : 2,
	_equipdefense: 1,
	_equiplucky : 2,
	_equipspritefront : spr_headequip_sombreroembrujadoFront,
	_equipspriteback : spr_headequip_sombreroembrujadoBack,
	_equipdescription : "Vuela, aletea, flota, misteriosa y magica roca",
	_equipset :	"Set Bruja"
}



_headEquip_ornamentorosasviejas = {
	_equipname : "Ornamento rosas viejas",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 2,
	_equipspecialattack : 0,
	_equipdefense: 1,
	_equiplucky : 0,
	_equipspritefront : spr_headequip_ornamentorosasviejasFront,
	_equipspriteback : spr_headequip_ornamentorosasviejasBack,
	_equipdescription : "Liviano de llevar, incluso sabiendo que las rosas son de cemento",
	_equipset :	"Noone"
}



_headEquipArray[0] = _headEquip_sombrespin;
_headEquipArray[1] = _headEquip_sombreroembrujado;
_headEquipArray[2] = _headEquip_ornamentorosasviejas;



#endregion










#region CHEST




_chestEquip_EMPTY = {
	_equipname : "EMPTY EMPTY EMPTY EMPTY",
	__cantidad : 0,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 1,
	_equiplucky : 0,
	_equipspritefront : pointer_null,
	_equipspriteback : pointer_null,
	_equipdescription : "EMPTY EMPTY EMPTY",
	_equipset :	"Noone"
}



_chestEquip_reinadecorazones = {
	_equipname : "Reina de Corazones",
	__cantidad : 1,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 1,
	_equiplucky : 0,
	_equipspritefront : sprKittyMaid,
	_equipspriteback : sprKittyMaid,
	_equipdescription : "Tiene una fragancia a pastel y moras",
	_equipset :	"Set CoffeMaid"
}




_chestEquipArray[0] = _chestEquip_reinadecorazones;
//_chestEquipArray[1] = chestEquip_sombreroembrujado;
//_chestEquipArray[2] = chestEquip_ornamentorosasviejas;



#endregion


#region HAND




_handEquip_EMPTY = {
	_equipname : "EMPTY EMPTY EMPTY EMPTY",
	__cantidad : 0,
	_equipvel : 0,
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 1,
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
	_equipphyssicattack : 0,
	_equipspecialattack : 0,
	_equipdefense: 1,
	_equiplucky : 0,
	_equipspritefront : sprKittyMaid,
	_equipspriteback : sprKittyMaid,
	_equipdescription : "Firme Acero de imitacion",
	_equipset :	"Noone"
}




_handEquipArray[0] = _handEquip_umbrella;
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





function _ingameMenudsList(_arraytoUse, _typeList) {
	
	if _typeList!=noone or pointer_null {
	switch (_typeList) {
	
	case "" :
	break;
	
	
	case "uwu":
	break;
	
	}
	}
	
    var _dsinventoryList = ds_list_create();
    
    for (var _i = 0; _i < array_length(_arraytoUse); _i++) {
        var _equip = _arraytoUse[_i];
        
        // Verificar si el equipo tiene _cantidad mayor a 0
        if (_equip._cantidad > 0) {
            // Agregar el equipo a la lista
            ds_list_add(_dsinventoryList, _equip);
        }
    }
    
    return _dsinventoryList; // Retornar la lista creada
}




#region   INVENTORY EXISTENCES
inv_showed=false;


inv_emptyplace = {
_Name : "EMPTY EMPTY EMPTY",
_cantidad : 0,
_Descr : "EMPTY EMPTY EMPTY",
///_Fun : global.hp_player=5,

}







inv_chokocookies = {
_Name : "Chocogalletas",
_cantidad : 3,
_Descr : "[Cura + 2]",
///_Fun : global.hp_player=5,
}

inv_apple = {
_Name : "Manzana",
_cantidad : 2,
_Descr : "[Cura + 2]",
///_Fun : global.hp_player=5,
}

inv_gummyfingers = {
_Name : "Gomidedos",
_cantidad : 4,
_Descr : ("[Cura + 2]"),
///_Fun : 0, //global.hp_player+=5,
}

inv_doridoripicantes = {
_Name : "Doridoripicantes",
_cantidad : 5,
_Descr : "[Cura Estado : Veneno]",
///_Fun : global.hp_player=5,
}
	
inv_glitter = {
_Name : "Barrita luminosa",
_cantidad : 5,
_Descr : "[Luminoso! #2min]",
///_Fun : global.hp_player=5,
}

inv_badges = {
_Name : "Chapitas",
_cantidad : 5,
_Descr : "[Intercambiables]",
///_Fun : global.hp_player=5,
}


inv_candymocka = {
_Name : "Dulce de mocka",
_cantidad : 4,
_Descr : "[Defensa + 5 #2min]",
///_Fun : global.hp_player=5,
}


inv_candymacchiato = {
_Name : "Dulce de Macchiato",
_cantidad : 5,
_Descr : "[Velocidad + 5 2min]",
///_Fun : global.hp_player=5,
}


inv_candycoffemilk = {
_Name : "Dulce de CoffeMilk",
_cantidad : 4,
_Descr : "[Atq Fisic. + 5 2min]",
///_Fun : global.hp_player=5,
}


inv_candycapuccino = {
_Name : "Dulce de Capuccino",
_cantidad : 5,
_Descr : "[Atq Mag. + 5 2min]",
///_Fun : global.hp_player=5,
}



inv_emptyplace = {
_Name : "EMPTY EMPTY EMPTY",
_cantidad : 0,
_Descr : "EMPTY EMPTY EMPTY",
///_Fun : global.hp_player=5,

}


//inv_list = ds_list_create();
//ds_list_add(inv_list,0);


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

