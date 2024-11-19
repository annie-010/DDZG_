event_inherited();


// Evento Step
if (_dir != noone) {
    // Aproximación suave hacia la posición objetivo usando una fracción de la distancia
    x += (_target_x - x) * _approach_speed;
    y += (_target_y - y) * _approach_speed;

    // Verifica si la plataforma está cerca del objetivo
    if (point_distance(x, y, _target_x, _target_y) < 1) {
        _timer--;
        if (_timer <= 0) {
            // Cambia de dirección a la opuesta y establece una nueva posición objetivo
            _dir = (_dir + 2) % 4;
            set_target_position(); // Actualiza la posición objetivo
            _timer = _timetoreturn; // Reinicia el temporizador
        }
    }
}

























/*

// Lógica en el evento Step
if (_dir != noone) {
	
	
	

	
	
    // Aproximación suave hacia la posición objetivo usando una fracción de la distancia
    
    

    // Verifica si está cerca del objetivo para detenerse y cambiar de dirección
    if (point_distance(x, y, _target_x, _target_y) < 1) {
        _timer--;
        if (_timer <= 0) {
            // Cambia de dirección a la opuesta y establece una nueva posición objetivo
            _dir = (_dir + 2) % 4;
            set_target_position(); // Actualiza la posición objetivo
            _timer = _timetoreturn; // Reinicia el temporizador
        }
    }
}