draw_set_color(c_black);
draw_rectangle(0,0,254,160,false);
draw_set_color(c_white);
draw_set_font(fnt_default_12);
draw_text(16,16,"current z : "+ string(z));
draw_text(16,32,"current zfloor : "+ string(floorZ));
draw_text(16,64,"current depth : " + string(depth));
draw_text(16,96,"");