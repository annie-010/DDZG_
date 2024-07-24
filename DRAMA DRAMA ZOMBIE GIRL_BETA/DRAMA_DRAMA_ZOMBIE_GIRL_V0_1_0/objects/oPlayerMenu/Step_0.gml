var _keydown = KEY_DOWN_PRESSED;
var _keyup = KEY_UP_PRESSED;
var _keyuse = KEY_I_PRESSED;
////var _keyu = KEY_U_PRESSED;



if isMenuOpen==true {
	
if _keydown {_mPos++; _keydown=false; } else if _keyup  {_mPos--; _keyup =false;}
}

switch (_currentingameMenuPage) {
	
	case _ingameMenuPage._indexPage:



if _keyuse {
	switch(_mPos) {
		
		case 0:
		///
		_currentingameMenuPage=_ingameMenuPage._equipPage;
		_keyuse=false;
		break;
		///keyuse
		case 1:
		//_mPos=0;
		_currentingameMenuPage=_ingameMenuPage._inventoryConsumiblePage;
		_keyuse=false;


		break;
///_inventoryKeysPage,_infoPage,_UNDEFINEDPAGE
		case 2:
		_currentingameMenuPage=_ingameMenuPage._inventoryKeysPage;
		_keyuse=false;
		break;

		case 3:
		_currentingameMenuPage=_ingameMenuPage._infoPage;
		_keyuse=false;
		break;
		
		
		case 4:
		_currentingameMenuPage=_ingameMenuPage._UNDEFINEDPAGE;
		_keyuse=false;
		break;
		
		case 5:
		break;

		case 6:
		break;

		case 7:
		break;
				
	}
}


	if _mPos < 0 {_mPos=array_length(_ingameMenuRootOptionsArray)-1;}
	if _mPos > array_length(_ingameMenuRootOptionsArray)-1 {_mPos=0;}
	
if KEY_I_PRESSED {
	switch(_mPos) {
		
		case 0:
		_mPos=0;
		_currentingameMenuPage=_ingameMenuPage._equipPage;

		
		break;
		
		case 1:
		_mPos=0;
		_currentingameMenuPage=_ingameMenuPage._inventoryConsumiblePage;

		break;

		case 2:
		break;

		case 3:
		break;
		
		
		case 4:
		break;
		
		case 5:
		break;

		case 6: isMenuOpen=false; _mPos=0;
		break;

		case 7:
		break;
				
	}
}
	

	break;
	

	
	
	
	case _ingameMenuPage._equipPage:
	
	
	
		if _keyuse {
	switch(_mPos) {
		
		case 0:
		_mPos=0;
		_currentingameMenuPage=_ingameMenuPage._equipHeadPage_;
		break;
		
		case 1:
		_mPos=0;
		_currentingameMenuPage=_ingameMenuPage._equipChestPage_;
		_keyuse=false; _mPos=0;
		break;

		case 2:
		_mPos=0;
		_currentingameMenuPage=_ingameMenuPage._equipHandPage_;
		_mPos=0;
		_keyuse=false;
		break;

		case 3:
		break;
		
		
		case 4: _currentingameMenuPage=_ingameMenuPage._indexPage;
		_keyuse=false;_mPos=0;
		break;
		
		
		
		
		case 5:
		break;
		
		
		
		case 6: 
		break;
		
		
		
		
		}}
	
	
	
	
	
	
	
	
	
	
	
	if _mPos < 0 {_mPos=array_length(_ingameMenuequipOptions)-1;}
	if _mPos > array_length(_ingameMenuequipOptions)-1 {_mPos=0;}
	break;
	
	
	case _ingameMenuPage._equipHeadPage_:
	if _mPos < 0 {_mPos=ds_list_size(_arraytodslist(_headEquipArray))-1;}
	if _mPos > ds_list_size(_arraytodslist(_headEquipArray))-1 {_mPos=0;}
	if _keyuse {
	OWNER._currentequipPlayer._Head=_headEquipArray[_mPos];
	show_debug_message("CAMBIO HECHO")
	}	
	
	break;
	
	
	
	case _ingameMenuPage._equipChestPage_:
	if _mPos < 0 {_mPos=ds_list_size(_arraytodslist(_chestEquipArray))-1;}
	if _mPos > ds_list_size(_arraytodslist(_chestEquipArray))-1 {_mPos=0;}
		if _keyuse {
	OWNER._currentequipPlayer._Chest=_chestEquipArray[_mPos];
	show_debug_message("CAMBIO HECHO")
	}	
	
	
	
	break;
	
	case  _ingameMenuPage._equipHandPage_:
	if _mPos < 0 {_mPos=ds_list_size(_arraytodslist(_handEquipArray))-1;}
	if _mPos > ds_list_size(_arraytodslist(_handEquipArray))-1 {_mPos=0;}
	if _keyuse {
	OWNER._currentequipPlayer._Hand=_handEquipArray[_mPos];
	show_debug_message("CAMBIO HECHO")
	}		
	
	
	
	break;
	
	
	
	case _ingameMenuPage._inventoryConsumiblePage:
	
	var _inventorydslist = _ingameMenudsList(inv_array, noone);
	if _mPos>ds_list_size(_inventorydslist)-1 {
	_mPos=0;
	} else if _mPos<0 {_mPos=ds_list_size(_inventorydslist)-1;}

	break;



} 


