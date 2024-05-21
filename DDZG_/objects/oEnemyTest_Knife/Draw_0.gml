/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
///draw_self();


if _stela!=false {
	draw_sprite_ext(sprite_index,image_index,x-(15*sign(image_xscale)),y,image_xscale,1,0,c_gray,0.5);
}




draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,blendColor_,1);


if sprite_index!=noone {
draw_self();
}


if sectionId!=noone {

draw_set_color(c_red);
draw_text(x,y,"SECTION ID = " + string(sectionId));
}

if instance_exists(oPlayer) {
draw_text(x,y+15,("Distance : " + string(distance_to_point(oPlayer.x,oPlayer.y))));

draw_text(x,y+32,("_alreadyattack :" + string(_alreadyattack) + "  " + "time to wait : " + string(_timetowait)));

}




///draw_sprite_ext(sprite_index,image_index,x,y-z,Xscale,1,0,blendColor_,1);
/*
//draw_text(x,y,_statePrint);
draw_text(x,y+32,"Distance = " + string(distance_));
draw_text(x,y-96,"depth = " + string(depth));
draw_text(x,y+64,"Inmunity Time = " + string(InmunityTime));
draw_text(x,y+96, "Hurt = " + string(HurtDur));
draw_text(x,y+128, "ATTACKANIM = " + string(attackDur));
/*

switch (actualEnemyState) { ///=EnemyState.stand
	

case enemie_state.stand_: draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,c_white,1); break;
case enemie_state.walk_: draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,c_white,1); break;
case enemie_state.attack_: draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,c_white,1); break;
case enemie_state.hurt_: draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,c_red,0.5); break;
///case EnemyState.hurt_rest: draw_sprite_ext(sprite_index,image_index,x,y-z,image_xscale,1,0,c_red,0.5); break;

}






