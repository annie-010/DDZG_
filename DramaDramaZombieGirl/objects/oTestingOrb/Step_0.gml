          // Ángulo inicial para el movimiento circular

// Actualización de la posición usando funciones seno y coseno
orbita_ang += velocidad_orbita; // Incremento del ángulo para controlar el movimiento

// Movimiento circular
x = centrox + cos(orbita_ang) * radio_orbita; // Posición en X
y = centroy + sin(orbita_ang) * radio_orbita; // Posición en Y