var _keydown = KEY_DOWN_PRESSED;
var _keyup = KEY_UP_PRESSED;
var _keyuse = KEY_I_PRESSED;
var _keyback = KEY_U_PRESSED;
////var _keyu = KEY_U_PRESSED;



if PlayerStats._hpCurrent<=0 {
	//("MUERTA");
	} else if  PlayerStats._hpCurrent>0 {
//("hp :" + string(PlayerStats._hpCurrent));
}






//if oPlayer._EnumPlayerState==_hurt {}


if oPlayer._CurrentPlayerState==_EnumPlayerState._hurt  or oPlayer._CurrentPlayerState==_EnumPlayerState._dialog {
	isMenuOpen=false;
	_mPos=0;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._indexPage;
}


/*


 enum _EnumPlayerState {_inactive,_stand,_walk,_run,_menu,_jump,_backdash,_attack00,_hurt,_counter}
_CurrentPlayerState = _EnumPlayerState._inactive; 
_CurrentStatePrint="Noone";
alarm_set(0,30);


*/




if isMenuOpen == true {

  if _keydown {
    _mPos++;
    _keydown = false;
  } else if _keyup {
    _mPos--;
    _keyup = false;
  }

  switch (_currentingameMenuPage) {

  case _ingameMenuPage._indexPage:
  
  
  

  

    if _keyuse {
      switch (_mPos) {

      case 0:
        ///
        _currentingameMenuPage = _ingameMenuPage._equipPage; _mPos=0;
        _keyuse = false;
        break;
        ///keyuse
      case 1:
        //_mPos=0;
        _currentingameMenuPage = _ingameMenuPage._inventoryConsumiblePage; _mPos=0;
        _keyuse = false;

        break;
        ///_inventoryKeysPage,_infoPage,_UNDEFINEDPAGE
      case 2:
        _currentingameMenuPage = _ingameMenuPage._inventoryKeysPage; _mPos=0;
        _keyuse = false;
        break;

      case 3:
        _currentingameMenuPage = _ingameMenuPage._infoPage;
        _keyuse = false; _mPos=0;
        break;

      case 4:
        _currentingameMenuPage = _ingameMenuPage._UNDEFINEDPAGE; _mPos=0;
        _keyuse = false;
        break;

      case 5:
	    ///_currentingameMenuPage = _ingameMenuPage._UNDEFINEDPAGE;
		game_restart();
		global.game_restarted=true;
		currentWaittoBlockbutton=0;
		_mPos=0;
        _keyuse = false;
        break;

      case 6:
	  _keyuse=false; 
	  _mPos=0;
	  isMenuOpen=false;
	  currentWaittoBlockbutton=0;
        break;

      case 7:
        break;

      }
    }

    if _mPos < 0 {
      _mPos = array_length(_ingameMenuRootOptionsArray) - 1;
    }
    if _mPos > array_length(_ingameMenuRootOptionsArray) - 1 {
      _mPos = 0;
    }

 

    break;

  case _ingameMenuPage._equipPage:

    if _keyuse {
      switch (_mPos) {

      case 0:
        _mPos = 0;
        _currentingameMenuPage = _ingameMenuPage._equipHeadPage_;
        break;

      case 1:
        _mPos = 0;
        _currentingameMenuPage = _ingameMenuPage._equipChestPage_;
        _keyuse = false;
        _mPos = 0;
        break;

      case 2:
        _mPos = 0;
        _currentingameMenuPage = _ingameMenuPage._equipHandPage_;
        _mPos = 0;
        _keyuse = false;
        break;

      case 3:
        break;

      case 4:
        _currentingameMenuPage = _ingameMenuPage._indexPage;
        _keyuse = false;
        _mPos = 0;
        break;

      case 5:
        break;

      case 6:
        break;

      }
    }

    if _mPos < 0 {
      _mPos = array_length(_ingameMenuequipOptions) - 1;
    }
    if _mPos > array_length(_ingameMenuequipOptions) - 1 {
      _mPos = 0;
    }
    break;

  case _ingameMenuPage._equipHeadPage_:
  


 _refreshinventory(_headEquipArray,_headEquipDsList); 

  

show_debug_message("ds_list_size : " + string(ds_list_size(_headEquipDsList)))
	if _keyuse {

      if _mPos != 0 && _mPos != 1 {
        OWNER._currentequipPlayer._Head=ds_list_find_value(_headEquipDsList,_mPos);

        _mPos = 0;
      } else if _mPos == 0 { ///DESEQUIPAR   pointer_null

        OWNER._currentequipPlayer._Head = pointer_null;

        ///_headEquipArray[_mPos];
      } else if
      _mPos == 1 {
        _mPos = 0;
        _currentingameMenuPage = _ingameMenuPage._equipPage;
      }
    }
	

    break;

  case _ingameMenuPage._equipChestPage_: //_chestEquipDsList
    ////("mpos " + string(_mPos));
show_debug_message("ds_list_size : " + string(ds_list_size(_handEquipDsList)))

 _refreshinventory(_chestEquipArray,_chestEquipDsList); 
	
	if _keyuse {

      if _mPos != 0 && _mPos != 1 {
        OWNER._currentequipPlayer._Chest=ds_list_find_value(_chestEquipDsList,_mPos);/// _headEquipArray[_mPos];
        ////(string(OWNER._currentequipPlayer._Chest)); //"OWNER._currentequipPlayer._Head=_headEquipArray[_mPos];")
        ////("CAMBIO HECHO");
        _mPos = 0;
      } else if _mPos == 0 { ///DESEQUIPAR   pointer_null

        OWNER._currentequipPlayer._Chest = pointer_null;

        ///_headEquipArray[_mPos];
      } else if
      _mPos == 1 {
        _mPos = 0;
        _currentingameMenuPage = _ingameMenuPage._equipPage;
      }
    }
	


    break;

case _ingameMenuPage._equipHandPage_:



 _refreshinventory(_handEquipArray,_handEquipDsList); 
	
	
	
	if _keyuse {

      if _mPos != 0 && _mPos != 1 {
        OWNER._currentequipPlayer._Weapon=ds_list_find_value(_handEquipDsList,_mPos);/// _headEquipArray[_mPos];
        ////(string(OWNER._currentequipPlayer._Weapon)); //"OWNER._currentequipPlayer._Head=_headEquipArray[_mPos];")
        ////("CAMBIO HECHO");
        _mPos = 0;
      } else if _mPos == 0 { ///DESEQUIPAR   pointer_null

        OWNER._currentequipPlayer._Weapon = pointer_null;

        ///_headEquipArray[_mPos];
      } else if
      _mPos == 1 {
        _mPos = 0;
        _currentingameMenuPage = _ingameMenuPage._equipPage;
      }
    }
	


break;





	
		case _ingameMenuPage._inventoryKeysPage:
		
		if ds_list_empty(_invkeyDsList) {
for (var a_ = 0 ; a_<(array_length(invkey_array)); a_++) {
	if !(is_undefined(a_)) {
		if invkey_array[a_]._cantidad>0 {
			ds_list_add(_invkeyDsList,invkey_array[a_]);}}
} exit;
} else { 
	show_debug_message("hay " + string(ds_list_size(_invkeyDsList)) + "  objetos en la Ds_list");
	show_debug_message("current _mpos = " + string(_mPos));
	for (var i = 0; i < ds_list_size(_invkeyDsList); i++) {
    var item = ds_list_find_value(_invkeyDsList, i);
    show_debug_message("Ítem " + string(i) + ": " + string(item));
}
	if _mPos>ds_list_size(_invkeyDsList)-1 {_mPos=0;} else if _mPos<0{_mPos=ds_list_size(_invkeyDsList)-1}
	
	var _inventoryItemToUse = ds_list_find_value(_invkeyDsList, _mPos);
	if _keyuse {
		_keyuse=false; 
		if _mPos==0 {_currentingameMenuPage = _ingameMenuPage._indexPage; _mPos = 0;} else 
		{
			
			
			switch (_inventoryItemToUse) {
			
			
			case invkey_keycard_first: 


			
			
var _text = instance_create_layer(x,y,"SYSTEM",otext_parent);
_text._text[0]="robot@@@@@ *No es el momento*";
			break;
			}
			
	isMenuOpen=false;
	_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	
	_currentingameMenuPage = _ingameMenuPage._indexPage; }
	}
}
		
		
		break;
	
  case _ingameMenuPage._inventoryConsumiblePage:


//comienza un bucle desde 0 hasta el numero maximo de la array inventario consumible, 
///revisa cada struct dentro de la array y cualquiera que tenga cantidad >0 se agregaría a la ds_list que muestra el inventario actual/
///
if ds_list_empty(_invDsList) {
for (var a_ = 0 ; a_<(array_length(inv_array)); a_++) {
	if !(is_undefined(a_)) {
		if inv_array[a_]._cantidad>0 {
			ds_list_add(_invDsList,inv_array[a_]);}}
} exit;
} else { 
	show_debug_message("hay " + string(ds_list_size(_invDsList)) + "  objetos en la Ds_list");
	show_debug_message("current _mpos = " + string(_mPos));
	for (var i = 0; i < ds_list_size(_invDsList); i++) {
    var item = ds_list_find_value(_invDsList, i);
    show_debug_message("Ítem " + string(i) + ": " + string(item));
}
	if _mPos>ds_list_size(_invDsList)-1 {_mPos=0;} else if _mPos<0{_mPos=ds_list_size(_invDsList)-1}
	
	var _inventoryItemToUse = ds_list_find_value(_invDsList, _mPos);
	if _keyuse {
		_keyuse=false; 
		if _mPos==0 {_currentingameMenuPage = _ingameMenuPage._indexPage; _mPos = 0;} else {_inventoryItemToUse._FunctEffect._state = true;
		_inventoryItemToUse._cantidad-=1; ds_list_clear(_invDsList);  _mPos=0; _currentingameMenuPage=_ingameMenuPage._indexPage; _keyuse=false;}
	}
}


    break;

  }
}






	var key_M,key_N;
	key_M=keyboard_check_pressed(ord("M"));
	key_N=keyboard_check_pressed(ord("N"));
	
	if key_M {PlayerStats._hpCurrent+=1;}
	if key_N {PlayerStats._hpCurrent-=1;}



if isMenuOpen==true {
if canbeClosed==false {
	if currentWaittoBlockbutton<3 {
		////show_debug_message(string(currentWaittoBlockbutton));
		
	currentWaittoBlockbutton+=_deltatimeSec();
	} else if currentWaittoBlockbutton>=3 {
	currentWaittoBlockbutton=0;
	canbeClosed=true;
	}} else if canbeClosed==true {
		
		
		
	if _keyback {
	
	switch(_currentingameMenuPage) { 
		
		case  _ingameMenuPage._indexPage :
		

	isMenuOpen=false;
	_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	
	_currentingameMenuPage = _ingameMenuPage._indexPage;
	
		break;
		
		
		case  _ingameMenuPage._equipPage :
		
	//isMenuOpen=false;
	_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._indexPage;

		
		break;

		case  _ingameMenuPage._equipHeadPage_ :
			_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._equipPage;
		break;		
		
		
		case  _ingameMenuPage._equipChestPage_ :
			_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._equipPage;
		break;
		
		case  _ingameMenuPage._equipHandPage_ :
			_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._equipPage;
		break;

		case  _ingameMenuPage._inventoryConsumiblePage :
			_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._indexPage;
		break;

		case  _ingameMenuPage._inventoryKeysPage :
			_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._indexPage;
		

	
	
	
	
	
	
	
	
	
	
		break;


		case  _ingameMenuPage._infoPage :
			_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._indexPage;
		break;

		case  _ingameMenuPage._UNDEFINEDPAGE :
			_mPos=0;
	canbeClosed=false;
	_keyback=false;
	currentWaittoBlockbutton=0;
	_currentingameMenuPage = _ingameMenuPage._indexPage;
		break;
		
		}
	}
	}

/*
  if canbeClosed { 
	  
	  if  _keyback    {isMenuOpen=false;
	_mPos=0;
	_currentingameMenuPage = _ingameMenuPage._indexPage;}

  }



enum _ingameMenuPage {_indexPage,_equipPage,_equipHeadPage_,_equipChestPage_,_equipHandPage_,_inventoryConsumiblePage,_inventoryKeysPage,_infoPage,_UNDEFINEDPAGE}
_currentingameMenuPage = _ingameMenuPage._indexPage;





*/


}