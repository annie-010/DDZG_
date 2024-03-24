/// @description Inserte aquí la descripción
// Puede escribir su código en este editor





#region  SISTEMA DE PAUSA

var keyPause = keyboard_check_pressed(vk_enter);

if keyPause && (room!=r_test_menu_00)  {

switch (pause)
{

case false:


player_xpause=oPlayer.x;///oPlayer.z);  
player_ypause=oPlayer.y-oPlayer.z///-3


oInfoGUI.visible=false;
///instance_deactivate_object(oInfoGUI);
screen_save("Pause.png");
instance_deactivate_all(true);
pause=true;

break;

case true:
instance_activate_all();
oInfoGUI.visible=true;
pause=false;

break;}
}

#endregion







