/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if !instance_exists(oTransBlackOut) {

if (instance_exists(oPlayer)) && room!=(r_test_menu_00) {
	draw_set_alpha(1)
draw_sprite(spr_life_bar, 0, 70,70);
 draw_sprite_part(spr_life_bar,1,0,0,global.hp_player/5*220,52,70,70)};
 draw_set_font(fnt_debug);
 draw_set_color(c_white);
/// draw_text(200,16,"LIVES = " + string(global.player_lives));
///draw_text(200,32,"COIN = " + string(global.money_player));
//draw_text(200,48,"HP = " + string(global.hp_player));

 }




/*
 draw_text()
 global.money_player




















