/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

// Inherit the parent event
event_inherited();

// Variables iniciales
z = 0;
_height = -64;
_shadow_spr = spr_square64shadow;
_colheight = 16;
_surface = noone;
_surface_spr = spr_square64surfaceshadow;
image_speed = 0;
image_index = 0;
_dir = 0; // Dirección inicial (0: derecha, 1: arriba, 2: izquierda, 3: abajo)
_speed = .5; // Velocidad máxima de la plataforma
_approach_speed = .05; // Velocidad de aproximación
_timetoreturn = 120; // Tiempo para regresar
_timer = _timetoreturn; // Temporizador para regresar
_target_x = x; // Comienza en la posición actual
_target_y = y; // Comienza en la posición actual

// Distancia de movimiento en cada dirección
distance = 256; 

// Configuración inicial de la posición objetivo
function set_target_position() {
    switch(_dir) {
        case 0: _target_x = x + distance; break; // Derecha
        case 1: _target_y = y - distance; break; // Arriba
        case 2: _target_x = x - distance; break; // Izquierda
        case 3: _target_y = y + distance; break; // Abajo
    }
}








































































/*
z=0;
_height=-64;
_shadow_spr=spr_square64shadow;
_colheight=16;
_surface=noone;
_surface_spr=spr_square64surfaceshadow;
image_speed=0;
image_index=0;
_dir = 0; // Dirección inicial (0: derecha, 1: arriba, 2: izquierda, 3: abajo)
_speed = .5; // Velocidad máxima de la plataforma
_approach_speed = .05; // Velocidad de aproximación
_timetoreturn = 120; // Tiempo para regresar
_timer = _timetoreturn; // Temporizador para regresar
_target_x = x;
_target_y = y;


// Configurar posición objetivo según la dirección
function set_target_position() {
    var distance = 256; // Ajusta este valor para cambiar la distancia recorrida

    switch(_dir) {
        case 0: // Derecha
            _target_x = x + distance;
            break;
        case 1: // Arriba
            _target_y = y - distance;
            break;
        case 2: // Izquierda
            _target_x = x - distance;
            break;
        case 3: // Abajo
            _target_y = y + distance;
            break;
    }
}

// Llamar a la función para inicializar la posición de destino
set_target_position();