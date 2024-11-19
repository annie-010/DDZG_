/*
#macro VIEW_WIDTH 1152
#macro VIEW_HEIGHT 864 
#macro GUI_WIDTH 1152
#macro GUI_HEIGTH 864
*/



///DRAWING CHARACTER PROFILE///
draw_set_font(fnt_default_16);
draw_set_color(c_black);


var _margin = 64;
var _indexlistMargin = 770;
var _indexlistVerticalMargin = 210;
var number = 784;
var arrayfor = pointer_null;

if oPlayer._CurrentPlayerState==_EnumPlayerState._dialog {} else {
draw_sprite_ext(PlayerStats._profilePicture, 0, _margin, (768), 1, 1, 0, c_white, 1);
var _lifeBar = draw_line_width_color((_margin*2), number, 96 + (16 * PlayerStats._hpCurrent), number, 34, StatColor, c_green);
draw_text(136, 800 , string(PlayerStats._name));
} 





switch (isMenuOpen) {

case true :

draw_sprite_ext(sprItemMenutable, 0, 738, (120), 1, 1, 0, c_white, 1);
draw_set_font(fnt_default_24);
draw_text(790, 136, "MENU");
draw_set_font(fnt_default_16);


//////
///_mPos<7 && _mPos>-1 ////

if _mPos<7 && _mPos>-1 {
	draw_sprite(sprcursor, 0, 735, (_indexlistVerticalMargin-5) + (_mPos * 64));
} else if _mPos<16 && _mPos>=7 {draw_sprite(sprcursor, 0, 735, (_indexlistVerticalMargin-5) + ((_mPos-7) * 64));} 




  switch (_currentingameMenuPage) {
  case _ingameMenuPage._indexPage:
    draw_set_font(fnt_default_16);
    arrayfor = array_length(_ingameMenuRootOptionsArray);
    for (var i = 0; i < arrayfor; i++) {
    draw_text(_indexlistMargin, _indexlistVerticalMargin + (64 * i), _ingameMenuRootOptionsArray[i]);}

  break;
  

  case _ingameMenuPage._equipPage:

    arrayfor = array_length(_ingameMenuequipOptions);
    for (var i = 0; i < arrayfor; i++) {
      draw_text(_indexlistMargin, _indexlistVerticalMargin + (64 * i), _ingameMenuequipOptions[i]);}
  
  break; 
  
  
  
  case _ingameMenuPage._equipHeadPage_:
  
  
  
  var _sep, _itemTouse, _chestItem, _handItem
_sep = 64;
_itemTouse = ds_list_find_value(_headEquipDsList, _mPos);



if !ds_list_empty(_headEquipDsList) {
  for (var _i = 0; _i < ds_list_size(_headEquipDsList); _i++) {
    draw_text(_indexlistMargin, _indexlistVerticalMargin + (_sep * _i), ds_list_find_value(_headEquipDsList, _i)._equipname);
  }

  if _mPos != 0 && _mPos != 1 {
    draw_sprite_ext(sprcharequip, 0, 64, 358, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprDesc, 0, 64, 120, 1, 1, 0, c_white, 1);

    draw_set_color(c_black);

    draw_set_font(fnt_default_16);
    draw_text(116, 140, "Descripcion");
    draw_text_ext(106, 200, _itemTouse._equipdescription, 16, 450);

    draw_set_font(fnt_default_12);


    var h_pos = 206;
    var chest_stat_vel = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipvel : 0;
    var weapon_stat_vel = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipvel: 0;
	

    var chest_stat_phy = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipphyssicattack: 0;
    var weapon_stat_phy = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipphyssicattack: 0;
	
    var chest_stat_espatk = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipspecialattack: 0;
    var weapon_stat_espatk = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipspecialattack: 0;
	
    var chest_stat_def = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipdefense : 0;
    var weapon_stat_def = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipdefense: 0;
	

    var chest_stat_espdef = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipspecialdefense: 0;
    var weapon_stat_espdef = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipspecialdefense: 0;
	
    var chest_stat_luck = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equiplucky: 0;
    var weapon_stat_luck = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equiplucky: 0;


    var total_vel = STAT_VEL_BASE + chest_stat_vel + weapon_stat_vel;
    var total_physical_attack = STAT_PHYSICATTACK_BASE + chest_stat_phy + weapon_stat_phy;
    var total_special_attack = STAT_SPECIALATTACK_BASE + chest_stat_espatk + weapon_stat_espatk;
    var total_defense = STAT_DEFENSE_BASE + chest_stat_def + weapon_stat_def;
    var total_special_defense = STAT_SPECIALDEFENSE_BASE + chest_stat_espdef + weapon_stat_espdef;
    var total_lucky = STAT_LUCKY_BASE + chest_stat_luck + weapon_stat_luck;



    draw_text((_margin*1.5), 390, "Velocidad : ");
    draw_text(238, 390, string(total_vel));

    draw_text((_margin*1.5), 420, "Ataque fisico : ");
    draw_text(238, 420, string(total_physical_attack));

    draw_text((_margin*1.5), 450, "Ataque ESP : ");
    draw_text(238, 450, string(total_special_attack));

    draw_text((_margin*1.5), 480, "Defensa : ");
    draw_text(238, 480, string(total_defense));

    draw_text((_margin*1.5), 510, "Defensa ESP : ");
    draw_text(238, 510, string(total_special_defense));

    draw_text((_margin*1.5), 540, "Suerte : ");
    draw_text(238, 540, string(total_lucky));


if _itemTouse._equipset!="Noone" {
    draw_text((_margin*1.5), 570, "Set : ");
	draw_set_color(c_orange);
    draw_text((_margin*1.5), 600, string(_itemTouse._equipset)); // 
	draw_set_color(c_black);
}


  }

  _itemStats[0] = _itemTouse._equipvel;
  _itemStats[1] = _itemTouse._equipphyssicattack;
  _itemStats[2] = _itemTouse._equipspecialattack;
  _itemStats[3] = _itemTouse._equipdefense;
  _itemStats[4] = _itemTouse._equipspecialdefense;
  _itemStats[5] = _itemTouse._equipspecialdefense;
  _itemStats[6] = _itemTouse._equiplucky;

  for (var _n = 0; _n < 6; _n++) {
    if _itemStats[_n] != 0 {
      if _itemStats[_n] < 0 {
        draw_set_color(c_red);
        draw_text(312, 390 + (30 * _n), (string(_itemStats[_n])));
      }
      else if _itemStats[_n] > 0 {
        draw_set_color(c_black);
        draw_text(320, 390 + (30 * _n), (string(_itemStats[_n])));
      }

    }
  }

}
  

  
  break;
  

  case _ingameMenuPage._equipChestPage_:
  
    
  
_sep = 64;
_itemTouse = ds_list_find_value(_chestEquipDsList, _mPos);



if !ds_list_empty(_chestEquipDsList) {
  for (var _i = 0; _i < ds_list_size(_chestEquipDsList); _i++) {
    draw_text(_indexlistMargin, _indexlistVerticalMargin + (_sep * _i), ds_list_find_value(_chestEquipDsList, _i)._equipname);
  }

  if _mPos != 0 && _mPos != 1 {
    draw_sprite_ext(sprcharequip, 0, 64, 358, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprDesc, 0, 64, 120, 1, 1, 0, c_white, 1);

    draw_set_color(c_black);

    draw_set_font(fnt_default_16);
    draw_text(116, 140, "Descripcion");
    draw_text_ext(106, 200, _itemTouse._equipdescription, 16, 450);

    draw_set_font(fnt_default_12);

    var h_pos = 206;
    var head_stat_vel = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipvel : 0;
    var weapon_stat_vel = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipvel: 0;
	

    var head_stat_phy = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipphyssicattack: 0;
    var weapon_stat_phy = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipphyssicattack: 0;
	
    var head_stat_espatk = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipspecialattack: 0;
    var weapon_stat_espatk = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipspecialattack: 0;
	
    var head_stat_def = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipdefense : 0;
    var weapon_stat_def = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipdefense: 0;
	

    var head_stat_espdef = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipspecialdefense: 0;
    var weapon_stat_espdef = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equipspecialdefense: 0;
	
    var head_stat_luck = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equiplucky: 0;
    var weapon_stat_luck = OWNER._currentequipPlayer._Weapon != pointer_null ? OWNER._currentequipPlayer._Weapon._equiplucky: 0;


    var total_vel = STAT_VEL_BASE + head_stat_vel + weapon_stat_vel;
    var total_physical_attack = STAT_PHYSICATTACK_BASE + head_stat_phy + weapon_stat_phy;
    var total_special_attack = STAT_SPECIALATTACK_BASE + head_stat_espatk + weapon_stat_espatk;
    var total_defense = STAT_DEFENSE_BASE + head_stat_def + weapon_stat_def;
    var total_special_defense = STAT_SPECIALDEFENSE_BASE + head_stat_espdef + weapon_stat_espdef;
    var total_lucky = STAT_LUCKY_BASE + head_stat_luck + weapon_stat_luck;


    draw_text((_margin*1.5), 390, "Velocidad : ");
    draw_text(238, 390, string(total_vel));

    draw_text((_margin*1.5), 420, "Ataque fisico : ");
    draw_text(238, 420, string(total_physical_attack));

    draw_text((_margin*1.5), 450, "Ataque ESP : ");
    draw_text(238, 450, string(total_special_attack));

    draw_text((_margin*1.5), 480, "Defensa : ");
    draw_text(238, 480, string(total_defense));

    draw_text((_margin*1.5), 510, "Defensa ESP : ");
    draw_text(238, 510, string(total_special_defense));

    draw_text((_margin*1.5), 540, "Suerte : ");
    draw_text(238, 540, string(total_lucky));


if _itemTouse._equipset!="Noone" {
    draw_text((_margin*1.5), 570, "Set : ");
	draw_set_color(c_orange);
    draw_text((_margin*1.5), 600, string(_itemTouse._equipset)); // 
	draw_set_color(c_black);
}
  }

  _itemStats[0] = _itemTouse._equipvel;
  _itemStats[1] = _itemTouse._equipphyssicattack;
  _itemStats[2] = _itemTouse._equipspecialattack;
  _itemStats[3] = _itemTouse._equipdefense;
  _itemStats[4] = _itemTouse._equipspecialdefense;
  _itemStats[5] = _itemTouse._equipspecialdefense;
  _itemStats[6] = _itemTouse._equiplucky;

  for (var _n = 0; _n < 6; _n++) {
    if _itemStats[_n] != 0 {
      if _itemStats[_n] < 0 {
        draw_set_color(c_red);
        draw_text(312, 390 + (30 * _n), (string(_itemStats[_n])));
      }
      else if _itemStats[_n] > 0 {
        draw_set_color(c_black);
        draw_text(320, 390 + (30 * _n), (string(_itemStats[_n])));
      }

    }
  }

}
break;   
  
  
  case _ingameMenuPage._equipHandPage_:  
_sep = 64;
_itemTouse = ds_list_find_value(_handEquipDsList, _mPos);



if !ds_list_empty(_handEquipDsList) {
  for (var _i = 0; _i < ds_list_size(_handEquipDsList); _i++) {
    draw_text(_indexlistMargin, _indexlistVerticalMargin + (_sep * _i), ds_list_find_value(_handEquipDsList, _i)._equipname);
  }

  if _mPos != 0 && _mPos != 1 {
    draw_sprite_ext(sprcharequip, 0, 64, 358, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprDesc, 0, 64, 120, 1, 1, 0, c_white, 1);

    draw_set_color(c_black);

    draw_set_font(fnt_default_16);
    draw_text(116, 140, "Descripcion");
    draw_text_ext(106, 200, _itemTouse._equipdescription, 16, 450);

    draw_set_font(fnt_default_12);

    var h_pos = 206;
    var head_stat_vel = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipvel : 0;
    var chest_stat_vel = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipvel: 0;
	

    var head_stat_phy = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipphyssicattack: 0;
    var chest_stat_phy = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipphyssicattack: 0;
	
    var head_stat_espatk = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipspecialattack: 0;
    var chest_stat_espatk = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipspecialattack: 0;
	
    var head_stat_def = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipdefense : 0;
    var chest_stat_def = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipdefense: 0;
	

    var head_stat_espdef = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equipspecialdefense: 0;
    var chest_stat_espdef = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equipspecialdefense: 0;
	
    var head_stat_luck = OWNER._currentequipPlayer._Head != pointer_null ? OWNER._currentequipPlayer._Head._equiplucky: 0;
    var chest_stat_luck = OWNER._currentequipPlayer._Chest != pointer_null ? OWNER._currentequipPlayer._Chest._equiplucky: 0;


    var total_vel = STAT_VEL_BASE + head_stat_vel + chest_stat_vel;
    var total_physical_attack = STAT_PHYSICATTACK_BASE + head_stat_phy + chest_stat_phy;
    var total_special_attack = STAT_SPECIALATTACK_BASE + head_stat_espatk + chest_stat_espatk;
    var total_defense = STAT_DEFENSE_BASE + head_stat_def + chest_stat_def;
    var total_special_defense = STAT_SPECIALDEFENSE_BASE + head_stat_espdef + chest_stat_espdef;
    var total_lucky = STAT_LUCKY_BASE + head_stat_luck + chest_stat_luck;

    draw_text((_margin*1.5), 390, "Velocidad : ");
    draw_text(238, 390, string(total_vel));

    draw_text((_margin*1.5), 420, "Ataque fisico : ");
    draw_text(238, 420, string(total_physical_attack));

    draw_text((_margin*1.5), 450, "Ataque ESP : ");
    draw_text(238, 450, string(total_special_attack));

    draw_text((_margin*1.5), 480, "Defensa : ");
    draw_text(238, 480, string(total_defense));

    draw_text((_margin*1.5), 510, "Defensa ESP : ");
    draw_text(238, 510, string(total_special_defense));

    draw_text((_margin*1.5), 540, "Suerte : ");
    draw_text(238, 540, string(total_lucky));


if _itemTouse._equipset!="Noone" {
    draw_text((_margin*1.5), 570, "Set : ");
	draw_set_color(c_orange);
    draw_text((_margin*1.5), 600, string(_itemTouse._equipset)); // 
	draw_set_color(c_black);
}
  }

  _itemStats[0] = _itemTouse._equipvel;
  _itemStats[1] = _itemTouse._equipphyssicattack;
  _itemStats[2] = _itemTouse._equipspecialattack;
  _itemStats[3] = _itemTouse._equipdefense;
  _itemStats[4] = _itemTouse._equipspecialdefense;
  _itemStats[5] = _itemTouse._equipspecialdefense;
  _itemStats[6] = _itemTouse._equiplucky;

  for (var _n = 0; _n < 6; _n++) {
    if _itemStats[_n] != 0 {
      if _itemStats[_n] < 0 {
        draw_set_color(c_red);
        draw_text(312, 390 + (30 * _n), (string(_itemStats[_n])));
      }
      else if _itemStats[_n] > 0 {
        draw_set_color(c_black);
        draw_text(320, 390 + (30 * _n), (string(_itemStats[_n])));
      }

    }
  }

}
  
  
  
  
  break;
  
  
  
  
  case _ingameMenuPage._inventoryConsumiblePage:


    var _inventoryConsumiblePageSep = 64;
	var _invItem = ds_list_find_value(_invDsList,_mPos);
        
	
	if !ds_list_empty(_invDsList){


    draw_sprite_ext(sprcharequip, 0, 64, 358, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sprDesc, 0, 64, 120, 1, 1, 0, c_white, 1);
	    draw_text(70, 100, "Descripcion");
    draw_text_ext(54, 150, _invItem._Descr, 16, 450);





	
	
	if _mPos<7 && _mPos>-1 {  

			for (var i_=0; i_<7; i_++) {
		
		var _inv_i = ds_list_find_value(_invDsList,i_);
		draw_text(_indexlistMargin,(_indexlistVerticalMargin)+(_inventoryConsumiblePageSep * i_),string(_inv_i._Name));
		if i_!=0 {draw_text(1004,(_indexlistVerticalMargin)+(_inventoryConsumiblePageSep * i_)," X " + string(_inv_i._cantidad));}

		}} 
	
	if _mPos<16 && _mPos>=7 {

			for (var a_=7; a_<(ds_list_size(_invDsList)); a_++) {
		
		var _inv_a = ds_list_find_value(_invDsList,a_);
		draw_text(_indexlistMargin,(_indexlistVerticalMargin)+(_inventoryConsumiblePageSep * (a_-7)),string(_inv_a._Name));
				draw_text(1004,(_indexlistVerticalMargin)+(_inventoryConsumiblePageSep * (a_-7))," X " + string(_inv_a._cantidad));

}} 
	
	}
	
	

    break;  
  
  
  
  
  }



break;



case false:
break;



}












/*


draw_set_font(fnt_default_16);
draw_set_color(c_black);
draw_text(96, 710, string(PlayerStats._name));
draw_sprite_ext(spr_pl_saki_portraitBase, 0, 32, 680, 1, 1, 0, c_white, 1);

var number = 696;





switch (isMenuOpen) {

case true:
  switch (_currentingameMenuPage) {
  case _ingameMenuPage._indexPage:
    
    draw_sprite_ext(sprItemMenutable, 0, 664, 64, 1, 1, 0, c_white, 1);

    break;

  case _ingameMenuPage._equipPage:
    draw_sprite_ext(sprItemMenutable, 0, 664, 64, 1, 1, 0, c_white, 1);
    draw_set_color(c_black);
    draw_set_font(fnt_default_16);
    draw_text(714, 90, "MENU");
    ///draw_text(oPlayer.x,oPlayer.y, "Mpos : " + string(_mPos));
    arrayfor = array_length(_ingameMenuequipOptions);
    draw_sprite(sprcursor, 0, 664, 142 + _mPos * 64);
    for (var i = 0; i < arrayfor; i++) {
      draw_text(700, 144 + (64 * i), _ingameMenuequipOptions[i]);
    }

    break;

  case _ingameMenuPage._equipHeadPage_:


    break;

  case _ingameMenuPage._equipChestPage_:


    break;

  case _ingameMenuPage._equipHandPage_:



    break;



  }

  break;

case false:
  break;

}