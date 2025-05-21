// Dirección de disparo (0 = abajo-derecha, 1 = arriba-derecha, 2 = arriba-izquierda, 3 = abajo-izquierda)
_orientation = 0; // Esto se puede configurar desde el editor de la room

// Tiempo entre disparos (ajustable para cada enemigo si lo deseas)
_fire_rate = noone; // Cada 60 frames (1 segundo si la room speed es 60)
_timer = 0; // Temporizador de disparo


function create_projectile(x_start, y_start, angle) {
    var inst = instance_create_layer(x_start, y_start, "_Entities",ocornertowershootbullet);
    inst.direction = angle; // Dirección de disparo
    inst.speed = 4; // Velocidad del proyectil (puedes cambiarla o hacerla escalable)
}