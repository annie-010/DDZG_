///draw_self();
/*
draw_set_color(c_red);
draw_set_font(fnt_default_12);
draw_text(x-64,(y+48)+z,"_CurrentLifeState : "+ string ( _CurrentLifeState ));
draw_text(x-64,(y+64)+z,"_CurrentTangibleState : "+ string ( _CurrentTangibleState ));
draw_text(x-64,(y+80)+z,"_CurrentActiveState : "+ string ( _CurrentActiveState ));
draw_text(x-64,(y+96)+z,"_CurrentDepth : "+ string ( depth ));
*/

draw_sprite_ext(_shadowspr,0,x,y+floorZ,1,1,0,c_white,0.5);



if _CurrentTangibleState==_PossibleEntityTangibleState._Tangible {
draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,0,c_white,1);
} else {draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,0,c_white,.5);}