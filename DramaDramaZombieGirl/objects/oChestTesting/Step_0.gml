
/*






if tested==false {


if instance_exists(oPlayerMenu) {


var _commonobjects_cardcolor_0 = instance_create_layer(x,y, "_SOLID",otext_keytest);
with(_commonobjects_cardcolor_0) {
	visible=true;
	sprite_index=spr_cardcolors;
	image_speed=0;
	image_index=4;
	_type = "_gifter";
	_uniquetype = "_secondtothirdSwitch";
	_gifttype = "_keyinventory";
	_gift = oPlayerMenu.invk_array[3];
	_msg = "saki@@@@@@	Has recogido 'Tarjeta de acceso'";
	_msg0 = "saki@@@@@@	De color, Sin nombres sin logos";	
	_msg1= "saki@@@@@@  Se ha guardado en Menu > Equipamiento > Arma  ";
	_msg2= "saki@@@@@@  Recuerda equiparlo para usarlo  ";
}






var _commonobjects_0 = instance_create_layer(x,y,"_SOLID",otext_keytest);
with(_commonobjects_0) {
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=5;
	_type = "_gifter";
	_uniquetype = "_secondtothirdSwitch";
	_gifttype = "_head";
	_gift = oPlayerMenu._headEquipArray[6];
	_msg = "saki@@@@@@	Has recogido 'Beelmet'";
	_msg0 = "saki@@@@@@	Del escuadron delta de abejitas";	
	_msg1= "saki@@@@@@  Se ha guardado en Menu > Equipamiento > Arma  ";
	_msg2= "saki@@@@@@  Recuerda equiparlo para usarlo  ";	
	}
	
	
	var _commonobjects_1 = instance_create_layer(x+64,y,"_SOLID",otext_keytest);
with(_commonobjects_1) {
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=5;
	_type = "_gifter";
	_uniquetype = "_secondtothirdSwitch";
	_gifttype = "_body";
	_gift = oPlayerMenu._chestEquipArray[4];
	_msg = "saki@@@@@@	Has recogido 'Beecap'";
	_msg0 = "saki@@@@@@	Sientes que al traerla puesta olvidas tus clases de termodinamica";	
	_msg1= "saki@@@@@@  Se ha guardado en Menu > Equipamiento > Arma  ";
	_msg2= "saki@@@@@@  Recuerda equiparlo para usarlo  ";	
	}
		var _commonobjects_2 = instance_create_layer(x+86,y,"_SOLID",otext_keytest);
with(_commonobjects_2) {
	visible=true;
	sprite_index=spr_disorderobjects;
	image_speed=0;
	image_index=5;
	_type = "_gifter";
	_uniquetype = "_secondtothirdSwitch";
	_gifttype = "_hand";
	_gift = oPlayerMenu._handEquipArray[5];
	_msg = "saki@@@@@@	Has recogido 'Beecane'";
	_msg0 = "saki@@@@@@	Sientes que al traerla puesta olvidas tus clases de termodinamica";	
	_msg1= "saki@@@@@@  Se ha guardado en Menu > Equipamiento > Arma  ";
	_msg2= "saki@@@@@@  Recuerda equiparlo para usarlo  ";	
	}
	
	
	
	
	}
	
	
	
	
	
	
	
	
	
	tested=true;

}