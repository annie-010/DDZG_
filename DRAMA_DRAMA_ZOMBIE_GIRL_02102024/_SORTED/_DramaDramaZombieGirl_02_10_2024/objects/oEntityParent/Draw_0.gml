///draw_self();
/*
draw_set_color(c_red);
draw_set_font(fnt_default_12);
draw_text(x-64,(y+48)+z,"_CurrentLifeState : "+ string ( _CurrentLifeState ));
draw_text(x-64,(y+64)+z,"_CurrentTangibleState : "+ string ( _CurrentTangibleState ));
draw_text(x-64,(y+80)+z,"_CurrentActiveState : "+ string ( _CurrentActiveState ));
draw_text(x-64,(y+96)+z,"_CurrentDepth : "+ string ( depth ));
*/


draw_set_font(fnt_default_08);
draw_set_color(c_red);


if _cutted==true {
draw_sprite(spr_totalredcut, 0, x, y);
_cutted=false;
}












draw_sprite_ext(_shadowspr,0,x,y+floorZ,1,1,0,c_white,0.5);
if _hp!=0 {
///draw_text(x,y+z, "hp : " + string(_hp));
}


if _CurrentTangibleState==_PossibleEntityTangibleState._Tangible {
draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,0,c_white,1);
} else {draw_sprite_ext(sprite_index,image_index,x,y+z,image_xscale,image_yscale,0,c_white,.5);}



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
            1.5,                       // Escala x
            1.5,                       // Escala y
            0,                         // Ángulo de rotación
            c_white,                   // Color de mezcla
            1                          // Alpha (opacidad)
        );
    }
} else {}


#endregion















/*


var stat_list = [_defphy, _defesp];

for (var i = 0; i < array_length(stat_list); i++) {
    draw_text(x,y-96 + i * 16, string(stat_list[i])); // Dibuja la variable como texto
}


