/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_color(c_black);
draw_text(x-64,(y+64)+z,"_current state : "+ string (_CurrentStatePrint));
draw_text(x-64,(y+48)+z,"_current wait : " + string( _currentwait ));

draw_set_color(c_white);
//draw_text(x-64,(y+64)+z,"_CurrentTangibleState : "+ string ( _CurrentTangibleState ));
//draw_text(x-64,(y+80)+z,"_CurrentActiveState : "+ string ( _CurrentActiveState ));
//draw_text(x-64,(y+96)+z,"_CurrentDepth : "+ string ( depth ));





var bar_width = 80; // Ancho visual fijo de la barra de vida
var bar_height = 8;
var bar_x = x + 16;
var bar_y = y + z - 16;

// Dibujar fondo (barra roja)
draw_line_width_color(bar_x, bar_y, bar_x + bar_width, bar_y, bar_height, c_red, c_red);

// Calcular vida proporcional para barra verde
var life_ratio = _hp / _maxhp;
var life_width = bar_width * life_ratio;

// Dibujar barra verde proporcional
draw_line_width_color(bar_x, bar_y, bar_x + life_width, bar_y, bar_height, c_green, c_green);


// Inherit the parent event
event_inherited();

