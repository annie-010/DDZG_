var cam_x = view_get_xport(0);
var cam_y = view_get_yport(0);




switch (pause) {

case false:

break;


case true:

bg = sprite_add("Pause.png",0,0,0,cam_x,cam_y);

draw_sprite(bg,0,player_xpause-512,player_ypause-400);
draw_sprite(sprRECrectangle,0,player_xpause-512,player_ypause-400);
break;


}







