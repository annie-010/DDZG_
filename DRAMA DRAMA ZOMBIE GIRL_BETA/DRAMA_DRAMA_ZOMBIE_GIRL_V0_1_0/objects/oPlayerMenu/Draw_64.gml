//#macro GUI_WIDTH 1024 
//#macro GUI_HEIGTH 768 

draw_set_font(fnt_default_12);
draw_set_color(c_black);
draw_text(96,710,string(PlayerStats._name));
draw_sprite_ext(spr_pl_saki_portraitBase,0,32,680,1,1,0,c_white,1);




var number = 696;

draw_line_width_color(94,number,96+(16*PlayerStats._hpCurrent),number,34,StatColor,c_green);

var arrayfor = pointer_null;

switch (isMenuOpen) {
case true: 

draw_set_font(fnt_default_16);
draw_text(714,90,"MENU");

//draw_sprite_ext(sprItemMenutable,0,664,64,1,1,0,c_white,1);
//draw_sprite_ext(sprcharequip,0,32,286,1,1,0,c_white,1);
//draw_sprite_ext(sprDesc,0,16,64,1,1,0,c_white,1);


switch (_currentingameMenuPage) {

case _ingameMenuPage._indexPage:


draw_sprite_ext(sprItemMenutable,0,664,64,1,1,0,c_white,1);
//draw_sprite_ext(sprcharequip,0,32,286,1,1,0,c_white,1);
//draw_sprite_ext(sprDesc,0,16,64,1,1,0,c_white,1);



draw_sprite_ext(sprItemMenutable,0,664,64,1,1,0,c_white,1);


draw_text(oPlayer.x,oPlayer.y, "Mpos : " + string(_mPos));
draw_set_font(fnt_default_16);
arrayfor = array_length(_ingameMenuRootOptionsArray);
draw_sprite(sprcursor,0,664,142 + _mPos * 64);
for (var i = 0 ;i<arrayfor ;i++) {
    draw_text(700,144 + (64 * i),_ingameMenuRootOptionsArray[i]);
}
break;

case _ingameMenuPage._equipPage:
		draw_sprite_ext(sprItemMenutable,0,664,64,1,1,0,c_white,1);




draw_text(oPlayer.x,oPlayer.y, "Mpos : " + string(_mPos));

draw_set_font(fnt_default_16);
arrayfor = array_length(_ingameMenuequipOptions);

draw_sprite(sprcursor,0,664,142 + _mPos * 64);

for (var i = 0 ;i<arrayfor ;i++) {
    draw_text(700,144 + (64 * i),_ingameMenuequipOptions[i]);
}


break;


case _ingameMenuPage._equipHeadPage_:

draw_sprite_ext(sprItemMenutable,0,664,64,1,1,0,c_white,1);
draw_sprite_ext(sprcharequip,0,32,286,1,1,0,c_white,1);
draw_sprite_ext(sprDesc,0,16,64,1,1,0,c_white,1);




var _ingamemenuHeadequipSep = 64;
draw_text(oPlayer.x,oPlayer.y, "Mpos : " + string(_mPos));
draw_set_font(fnt_default_16);
arrayfor = array_length(_headEquipArray);
draw_sprite(sprcursor,0,664,142 + _mPos * _ingamemenuHeadequipSep);

for (var i = 0 ;i<arrayfor ;i++) {
    draw_text(700,144 + (_ingamemenuHeadequipSep * i),_headEquipArray[i]._equipname);
}
draw_set_color(c_black);
draw_text(64,334,"Velocidad:"+ string(PlayerStats._statVel));
draw_set_color(c_red);
if (_headEquipArray[_mPos]._equipvel>0) {
	draw_text(250,334," + "); 
}else if (_headEquipArray[_mPos]._equipvel<0){ 
		draw_text(250,334," - "); }
draw_text(280,334,(string(_headEquipArray[_mPos]._equipvel)));
draw_set_color(c_black);





draw_set_color(c_black);
draw_text(64,368,"Ataque fisico:"+ string(PlayerStats._statPhisycAttack));
draw_set_color(c_red);
if (_headEquipArray[_mPos]._equipphyssicattack>0) {
	draw_text(250,368," + "); 
}else if (_headEquipArray[_mPos]._equipphyssicattack<0){ 
		draw_text(250,368," - "); }
draw_text(280,368,(string(_headEquipArray[_mPos]._equipphyssicattack)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,402,"Ataque ESP:"+ string(PlayerStats._statPhisycAttack));
draw_set_color(c_red);
if (_headEquipArray[_mPos]._equipphyssicattack>0) {
	draw_text(250,402," + "); 
}else if (_headEquipArray[_mPos]._equipphyssicattack<0){ 
		draw_text(250,402," - "); }
draw_text(280,402,(string(_headEquipArray[_mPos]._equipphyssicattack)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,436,"Defensa:"+ string(PlayerStats._statDefense));
draw_set_color(c_red);
if (_headEquipArray[_mPos]._equipdefense>0) {
	draw_text(250,436," + "); 
}else if (_headEquipArray[_mPos]._equipdefense<0){ 
		draw_text(250,436," - "); }
draw_text(280,436,(string(_headEquipArray[_mPos]._equipdefense)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,470,"Suerte:"+ string(PlayerStats._statLucky));
draw_set_color(c_red);
if (_headEquipArray[_mPos]._equiplucky>0) {

}else if (_headEquipArray[_mPos]._equiplucky<0){ 
 }
draw_text(280,470,(string(_headEquipArray[_mPos]._equiplucky)));
draw_set_color(c_black);
if (_headEquipArray[_mPos]._equipset!="Noone") {

draw_set_color(c_black);
draw_text(64,504,"Set :");///+ string(PlayerStats._statLucky)); //	_equipset
draw_set_color(c_orange);
 
	///draw_text(250,504," + "); 
	draw_text(128,504,(string(_headEquipArray[_mPos]._equipset)));

}


draw_set_color(c_black);

draw_set_font(fnt_default_16);
draw_text(70,100,"Descripcion");

draw_text_ext(54, 150, _headEquipArray[_mPos]._equipdescription, 16, 450);




break;


case _ingameMenuPage._equipChestPage_:



draw_sprite_ext(sprItemMenutable,0,664,64,1,1,0,c_white,1);
draw_sprite_ext(sprcharequip,0,32,286,1,1,0,c_white,1);
draw_sprite_ext(sprDesc,0,16,64,1,1,0,c_white,1);




var _ingamemenuHeadequipSep = 64;
draw_text(oPlayer.x,oPlayer.y, "Mpos : " + string(_mPos));
draw_set_font(fnt_default_16);
arrayfor = array_length(_chestEquipArray);
draw_sprite(sprcursor,0,664,142 + _mPos * _ingamemenuHeadequipSep);

for (var i = 0 ;i<arrayfor ;i++) {
    draw_text(700,144 + (_ingamemenuHeadequipSep * i),_chestEquipArray[i]._equipname);
}
draw_set_color(c_black);
draw_text(64,334,"Velocidad:"+ string(PlayerStats._statVel));
draw_set_color(c_red);
if (_chestEquipArray[_mPos]._equipvel>0) {
	draw_text(250,334," + "); 
}else if (_chestEquipArray[_mPos]._equipvel<0){ 
		draw_text(250,334," - "); }
draw_text(280,334,(string(_chestEquipArray[_mPos]._equipvel)));
draw_set_color(c_black);





draw_set_color(c_black);
draw_text(64,368,"Ataque fisico:"+ string(PlayerStats._statPhisycAttack));
draw_set_color(c_red);
if (_chestEquipArray[_mPos]._equipphyssicattack>0) {
	draw_text(250,368," + "); 
}else if (_chestEquipArray[_mPos]._equipphyssicattack<0){ 
		draw_text(250,368," - "); }
draw_text(280,368,(string(_chestEquipArray[_mPos]._equipphyssicattack)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,402,"Ataque ESP:"+ string(PlayerStats._statPhisycAttack));
draw_set_color(c_red);
if (_chestEquipArray[_mPos]._equipphyssicattack>0) {
	draw_text(250,402," + "); 
}else if (_chestEquipArray[_mPos]._equipphyssicattack<0){ 
		draw_text(250,402," - "); }
draw_text(280,402,(string(_chestEquipArray[_mPos]._equipphyssicattack)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,436,"Defensa:"+ string(PlayerStats._statDefense));
draw_set_color(c_red);
if (_chestEquipArray[_mPos]._equipdefense>0) {
	draw_text(250,436," + "); 
}else if (_chestEquipArray[_mPos]._equipdefense<0){ 
		draw_text(250,436," - "); }
draw_text(280,436,(string(_chestEquipArray[_mPos]._equipdefense)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,470,"Suerte:"+ string(PlayerStats._statLucky));
draw_set_color(c_red);
if (_chestEquipArray[_mPos]._equiplucky>0) {

}else if (_chestEquipArray[_mPos]._equiplucky<0){ 
 }
draw_text(280,470,(string(_chestEquipArray[_mPos]._equiplucky)));
draw_set_color(c_black);
if (_chestEquipArray[_mPos]._equipset!="Noone") {

draw_set_color(c_black);
draw_text(64,504,"Set :");///+ string(PlayerStats._statLucky)); //	_equipset
draw_set_color(c_orange);
 
	///draw_text(250,504," + "); 
	draw_text(128,504,(string(_chestEquipArray[_mPos]._equipset)));

}


draw_set_color(c_black);

draw_set_font(fnt_default_16);
draw_text(70,100,"Descripcion");

draw_text_ext(54, 150, _chestEquipArray[_mPos]._equipdescription, 16, 450);


break;












case _ingameMenuPage._equipHandPage_:

draw_sprite_ext(sprItemMenutable,0,664,64,1,1,0,c_white,1);
draw_sprite_ext(sprcharequip,0,32,286,1,1,0,c_white,1);
draw_sprite_ext(sprDesc,0,16,64,1,1,0,c_white,1);




var _ingamemenuHandequipSep = 64;
draw_text(oPlayer.x,oPlayer.y, "Mpos : " + string(_mPos));
draw_set_font(fnt_default_16);
arrayfor = array_length(_handEquipArray);
draw_sprite(sprcursor,0,664,142 + _mPos * _ingamemenuHandequipSep);

for (var i = 0 ;i<arrayfor ;i++) {
    draw_text(700,144 + (_ingamemenuHandequipSep * i),_handEquipArray[i]._equipname);
}
draw_set_color(c_black);
draw_text(64,334,"Velocidad:"+ string(PlayerStats._statVel));
draw_set_color(c_red);
if (_handEquipArray[_mPos]._equipvel>0) {
	draw_text(250,334," + "); 
}else if (_handEquipArray[_mPos]._equipvel<0){ 
		draw_text(250,334," - "); }
draw_text(280,334,(string(_handEquipArray[_mPos]._equipvel)));
draw_set_color(c_black);





draw_set_color(c_black);
draw_text(64,368,"Ataque fisico:"+ string(PlayerStats._statPhisycAttack));
draw_set_color(c_red);
if (_handEquipArray[_mPos]._equipphyssicattack>0) {
	draw_text(250,368," + "); 
}else if (_handEquipArray[_mPos]._equipphyssicattack<0){ 
		draw_text(250,368," - "); }
draw_text(280,368,(string(_handEquipArray[_mPos]._equipphyssicattack)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,402,"Ataque ESP:"+ string(PlayerStats._statPhisycAttack));
draw_set_color(c_red);
if (_handEquipArray[_mPos]._equipphyssicattack>0) {
	draw_text(250,402," + "); 
}else if (_handEquipArray[_mPos]._equipphyssicattack<0){ 
		draw_text(250,402," - "); }
draw_text(280,402,(string(_handEquipArray[_mPos]._equipphyssicattack)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,436,"Defensa:"+ string(PlayerStats._statDefense));
draw_set_color(c_red);
if (_handEquipArray[_mPos]._equipdefense>0) {
	draw_text(250,436," + "); 
}else if (_handEquipArray[_mPos]._equipdefense<0){ 
		draw_text(250,436," - "); }
draw_text(280,436,(string(_handEquipArray[_mPos]._equipdefense)));
draw_set_color(c_black);


draw_set_color(c_black);
draw_text(64,470,"Suerte:"+ string(PlayerStats._statLucky));
draw_set_color(c_red);
if (_handEquipArray[_mPos]._equiplucky>0) {

}else if (_handEquipArray[_mPos]._equiplucky<0){ 
 }
draw_text(280,470,(string(_handEquipArray[_mPos]._equiplucky)));
draw_set_color(c_black);
if (_handEquipArray[_mPos]._equipset!="Noone") {

draw_set_color(c_black);
draw_text(64,504,"Set :");///+ string(PlayerStats._statLucky)); //	_equipset
draw_set_color(c_orange);
 
	///draw_text(250,504," + "); 
	draw_text(128,504,(string(_handEquipArray[_mPos]._equipset)));

}


draw_set_color(c_black);

draw_set_font(fnt_default_16);
draw_text(70,100,"Descripcion");

draw_text_ext(54, 150, _handEquipArray[_mPos]._equipdescription, 16, 450);




break;























































case _ingameMenuPage._inventoryConsumiblePage:

draw_sprite_ext(sprItemMenutable,0,664,64,1,1,0,c_white,1);
draw_sprite_ext(sprcharequip,0,32,286,1,1,0,c_white,1);
draw_sprite_ext(sprDesc,0,16,64,1,1,0,c_white,1);


var _inventoryConsumiblePageSep = 64;

draw_text(oPlayer.x,oPlayer.y, "Mpos : " + string(_mPos));

draw_set_font(fnt_default_16);
arrayfor = array_length(inv_array);


if _mPos<0 {_mPos=arrayfor;}
draw_text(54,150,inv_array[_mPos]._Descr)


	if arrayfor>6 {
	if _mPos<=6 {
		draw_sprite(sprcursor,0,664,142 + _mPos * _inventoryConsumiblePageSep);
for (var i = 0 ;i<7 ;i++) {
	if inv_array[i]._cantidad>0 {
draw_text(700,144 + (_inventoryConsumiblePageSep * i),inv_array[i]._Name);
draw_text(940,144 + (_inventoryConsumiblePageSep * i)," x " + string(inv_array[i]._cantidad));

	}

}}

	if _mPos>=7 {
		draw_sprite(sprcursor,0,664,142 + (_mPos-7) * _inventoryConsumiblePageSep);
for (var i = 7 ;i<arrayfor ;i++) {
		if inv_array[i]._cantidad>0 {
draw_text(700,144 + (_inventoryConsumiblePageSep * (i-7)),inv_array[i]._Name);
draw_text(940,144 + (_inventoryConsumiblePageSep * (i-7))," x " + string(inv_array[i]._cantidad));

///draw_text_ext(54, 150,string(inv_array[i]._Descr), 32, 150);
}}}



}
	
    ///draw_text(700,144 + (_inventoryConsumiblePageSep * i),inv_array[i]._Name);

break;











}





break;


case false:
break;



}