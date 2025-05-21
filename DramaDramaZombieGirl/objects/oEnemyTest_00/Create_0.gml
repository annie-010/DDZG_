
event_inherited();



_hp=20;
_defphy=5;
_defesp=5;
_vel=5;
_atkphy=3;
_atkesp=1;

_atkrecieved=noone;




_hurtred=false;
_CurrentLifeState = _PossibleEntityLifeState._Alive;
_CurrentActiveState=_PossibleEntityActiveState._Active;
_CurrentTangibleState = _PossibleEntityTangibleState._Tangible;
alarm_set(0,90);


_canattack=false;
_generatedcol=false;
_timetocanattack=5;
_currentcanattackwait=0;
_currentresttime=0;
_calculated=false;
_target_x=0;
_target_y=0;
 _instancedmg = noone; 
 move_speed = 40;

/////Special Attacks/////

_fastknifewait=0;
_currentfastknifetimer=0;
_canfastknife=true;
























function _raycast(_x1, _y1, _x2, _y2,_tilemap) {
    var _dir, _dx, _dy, _dist, _rayendx, _rayendy, _hit, _hit_x, _hit_y;

    // Dirección del rayo
    _dir = point_direction(_x1, _y1, _x2, _y2);

    // Vectores unitarios
    _dx = lengthdir_x(1, _dir);
    _dy = lengthdir_y(1, _dir);

    // Longitud total del rayo (extiende 125 píxeles más allá del jugador)
    _dist = point_distance(_x1, _y1, _x2, _y2) + 125;

    // Coordenadas finales del rayo extendido
    _rayendx = _x1 + _dx * _dist;
    _rayendy = _y1 + _dy * _dist;

    // Realizar el raycast hasta la distancia extendida
    // Aquí ignoramos al jugador (puedes cambiar "all" por "oEnemyTest" u otro filtro específico)
    _hit = collision_line(_x1, _y1, _rayendx, _rayendy, _tilemap, true, true);

    // Coordenadas del impacto (si hay colisión)
    if (_hit != noone /*&& _hit != oPlayer*/) { // Comentamos esta parte para ignorar al jugador
		_hit_x =0// _hit.x;
	   _hit_y =0// _hit.y;
	  /// ///show_debug_message("hubo colision con tiles");
    } else {
		_hit_x =0// _rayendx;
	   _hit_y =0// _rayendy;
	   	  // ///show_debug_message("no hubo colision con tiles");
    }

    // Retornar datos del raycast
    return {
        hit_instance: _hit,    // Instancia impactada
        hit_x: _hit_x,         // Coordenada X del impacto (o del final extendido)
        hit_y: _hit_y,         // Coordenada Y del impacto (o del final extendido)
        ray_end_x: _rayendx,   // Coordenada X del rayo extendido
        ray_end_y: _rayendy    // Coordenada Y del rayo extendido
    };
}  








/*


// Obtener la posición del jugador
var px = oPlayer.x;
var py = oPlayer.y;

// Calcular la dirección del rayo
var dir = point_direction(x, y, px, py);

// Convertir la dirección a vectores unitarios
var dx = lengthdir_x(1, dir);
var dy = lengthdir_y(1, dir);

// Determinar la longitud del rayo (hasta el jugador más 125 píxeles)
var dist = point_distance(x, y, px, py) + 125;

// Coordenadas finales del rayo
var ray_end_x = x + dx * dist;
var ray_end_y = y + dy * dist;

// Realizar el raycast (detectar colisión con instancias específicas, aquí puedes agregar más objetos en lugar de `all`)
var hit = collision_line(x, y, ray_end_x, ray_end_y, all, true, true);

// Actualizar variables para el dibujo
laser_start_x = x;
laser_start_y = y;
if (hit != noone) {
    laser_end_x = hit.x;
    laser_end_y = hit.y;
} else {
    laser_end_x = ray_end_x;
    laser_end_y = ray_end_y;
}









