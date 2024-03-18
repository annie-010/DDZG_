/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



if global.hp_player>5 {global.hp_player=5;}
if room!=r_Test_00 and  room!=r_test_InitScreen and room!=r_test_menu_00  {
if !instance_exists(oPlayer) && global.player_lives>0 {
var Player = instance_create_layer(global.x_appear,global.y_appear,"INSTANCES",oPlayer);

Player._tangible=false;
}
}





if global.hp_player<=0  {
with (oPlayer) {
if ActualPlayerState!=PlayerStates.Death {ActualPlayerState=PlayerStates.Death; } 
}

}