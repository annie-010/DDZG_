/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();

///draw_line(x, y, x + (_sensorcoll * image_xscale), y);


//_CurrentLifeState = _PossibleEntityLifeState._Alive;
//_CurrentTangibleState = _PossibleEntityTangibleState._Tangible;
//_CurrentActiveState=_PossibleEntityActiveState._Active;





if 	_currentequipPlayer._Head!=pointer_null {
draw_sprite_ext((_currentequipPlayer._Head._equipspritefront),0,x,y+z,image_xscale,1,0,c_white,1);
}

if 	_currentequipPlayer._Chest!=pointer_null {
draw_sprite_ext((_currentequipPlayer._Chest._equipspritefront),0,x,y+z,image_xscale,1,0,c_white,1);
}


if 	_currentequipPlayer._Weapon!=pointer_null {
	
if image_xscale==1 
{
	draw_sprite_ext((_currentequipPlayer._Weapon._equipspritefront),0,x,(y-(48))+z,1,1,-45,c_white,1);} 
	else if image_xscale==-1 
	{
draw_sprite_ext((_currentequipPlayer._Weapon._equipspritefront),0,x,(y-(48))+z,1,1,225,c_white,1);
}}




#region //EFECTOS


if !ds_list_empty(_effDsList) {
    var maxEffects = min(ds_list_size(_effDsList), 6); // Máximo de 6 efectos a mostrar
    var yOffset = ds_list_size(_effDsList) > 3 ? (y - 176 + z) : (y - 150 + z);

    for (var a_ = 0; a_ < maxEffects; a_++) {
        var _dslistEffectValue = ds_list_find_value(_effDsList, a_);
        var xPos = x - 32 + (38 * (a_ % 3)); // Posición horizontal
        var yPos = yOffset + (38 * floor(a_ / 3)); // Posición vertical

        draw_sprite_ext(
            _dslistEffectValue._spr,   // Índice del sprite
            _dslistEffectValue._img,   // Subimagen del sprite
            xPos,                      // Posición x de dibujo
            yPos,                      // Posición y de dibujo
            1.3,                       // Escala x
            1.3,                       // Escala y
            0,                         // Ángulo de rotación
            c_white,                   // Color de mezcla
            1                          // Alpha (opacidad)
        );
    }
}


#endregion

///draw_rectangle(x-32,(y-134)+z,x+32,(y+z),false);

draw_set_color(c_black);
draw_set_alpha(1);



draw_set_font(fnt_default_08);
draw_text(x,y-160+z, "z : " + string(z));
draw_text(x,y-180+z, "z_floor : " + string(floorZ));
//draw_text(x-128,y-64,"equip head : " + string(_currentequipPlayer._Head) )
//draw_rectangle(x-32,y-32,x+32,y+32)
///draw_sprite_ext(mask_index,0,x,y,1,1,0,c_white,.5);















































/*
///draw_set_font(fnt_default_12);
draw_set_color(c_black);
///draw_sprite_ext(_maskFloor,0,x,y,1,1,0,c_white,0.5); 


/*

draw_text(x-64,y+48,"_prohibitedTime : " + string(_ProhibitedAttackTime)); 
draw_text(x,y+z,"attack state : " + string(_currentStateAttack)); //
draw_text(x,(y+64)+z,"time to continue combo : " + string(_TimeCombowait));

*/

//draw_text(x-64,y-64,"depth  : " + string(depth)); 
//draw_text(x-64,y+128,"state   : " + string(_CurrentStatePrint));
//draw_text(x-64,y+86, "Current State Number" + string(_CurrentPlayerState));
///draw_text(x,y+z,"zfloor : " + string(floorZ));
///draw_text(x+64,y+64,"current state : " + string(PAD_MOVE));
///
///draw_text(x-64,y+86, "IstangibleTime" + string(_notTangibleTime));
///draw_text(x-64,y+86, "depth : " + string(depth));



/*

if _isTangible {

} else {draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,0,c_white,0.5);}

//draw_sprite(mask_index,0,x,y+z);


*/
