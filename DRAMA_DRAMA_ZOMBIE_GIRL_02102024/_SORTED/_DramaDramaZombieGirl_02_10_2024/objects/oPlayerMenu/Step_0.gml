var _keydown = KEY_DOWN_PRESSED;
var _keyup = KEY_UP_PRESSED;
var _keyuse = KEY_I_PRESSED;
////var _keyu = KEY_U_PRESSED;



if PlayerStats._hpCurrent<=0 {
	//("MUERTA"); 
	
	} else if  PlayerStats._hpCurrent>0 {
//("hp :" + string(PlayerStats._hpCurrent));
}






//if oPlayer._EnumPlayerState==_hurt {}


if oPlayer._CurrentPlayerState==_EnumPlayerState._hurt {
	isMenuOpen=false;
	_mPos=0;
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
	    _currentingameMenuPage = _ingameMenuPage._UNDEFINEDPAGE; _mPos=0;
        _keyuse = false;
        break;

      case 6:
	  _keyuse=false; 
	  _mPos=0;
	  isMenuOpen=false;
	  
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

    ////("mpos " + string(_mPos));

    if ds_list_empty(_headEquipDsList) {
      for (var a_ = 0; a_ < array_length(_headEquipArray); a_++) {
        if _headEquipArray[a_].__cantidad == 1 {
          ds_list_add(_headEquipDsList, _headEquipArray[a_]);
        }
      }

      ////("ds_list_size : " + string(ds_list_size(_headEquipDsList)));
    } if !ds_list_empty(_headEquipDsList) {
		      if _mPos < 0 {
        _mPos = ds_list_size(_headEquipDsList)-1;
      } else if _mPos>ds_list_size(_headEquipDsList)-1 {
        _mPos = 0;
      }
	}
	
	
	
	if _keyuse {

      if _mPos != 0 && _mPos != 1 {
        OWNER._currentequipPlayer._Head=ds_list_find_value(_headEquipDsList,_mPos);/// _headEquipArray[_mPos];
        ////(string(OWNER._currentequipPlayer._Head)); //"OWNER._currentequipPlayer._Head=_headEquipArray[_mPos];")
        ////("CAMBIO HECHO");
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

    if ds_list_empty(_chestEquipDsList) {
      for (var a_ = 0; a_ < array_length(_chestEquipArray); a_++) {
        if _chestEquipArray[a_].__cantidad == 1 {
          ds_list_add(_chestEquipDsList, _chestEquipArray[a_]);
        }
      }

      ////("ds_list_size : " + string(ds_list_size(_chestEquipDsList)));
    } if !ds_list_empty(_chestEquipDsList) {
		      if _mPos < 0 {
        _mPos = ds_list_size(_chestEquipDsList)-1;
      } else if _mPos>ds_list_size(_chestEquipDsList)-1 {
        _mPos = 0;
      }
	}
	
	
	
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

    ////("mpos " + string(_mPos));

    if ds_list_empty(_handEquipDsList) {
      for (var a_ = 0; a_ < array_length(_handEquipArray); a_++) {
        if _handEquipArray[a_].__cantidad == 1 {
          ds_list_add(_handEquipDsList, _handEquipArray[a_]);
        }
      }

      ////("ds_list_size : " + string(ds_list_size(_handEquipDsList)));
    } if !ds_list_empty(_handEquipDsList) {
		      if _mPos < 0 {
        _mPos = ds_list_size(_handEquipDsList)-1;
      } else if _mPos>ds_list_size(_handEquipDsList)-1 {
        _mPos = 0;
      }
	}
	
	
	
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



  case _ingameMenuPage._inventoryConsumiblePage:

if ds_list_empty(_invDsList) {
	for (var a_ = 0; a_<(array_length(inv_array)); a_++) {
		if inv_array[a_]._cantidad>0 {
			ds_list_add(_invDsList,inv_array[a_]);
		}
	}

	
} else {
    var _inventoryItemToUse = ds_list_find_value(_invDsList, _mPos);
    if _keyuse {
        _keyuse = false;
        if _mPos == 0 {
            _currentingameMenuPage = _ingameMenuPage._indexPage;
            _mPos = 0;
        } else {
            // Activar la característica _state de la struct dentro de _FunctEffect
            _inventoryItemToUse._FunctEffect._state = true;
        }
    }

    if _mPos < 0 {
        _mPos = ds_list_size(_invDsList) - 1;
    } else if _mPos == ds_list_size(_invDsList) {
        _mPos = 0;
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



