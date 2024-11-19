/*
// Establecer la superficie como objetivo de renderizado
surface_set_target(global.surf_view);

// Limpiar la superficie antes de dibujar
draw_clear_alpha(c_black, 0);

// Dibujar todo el contenido del view
// Cambia este bloque si tienes múltiples views o contenido específico
draw_surface(application_surface, view_xport[0], view_yport[0]);

// Restablecer el objetivo de renderizado a la pantalla
surface_reset_target();

// Activar el shader
shader_set(shd_mosaic);

// Configurar los valores para el shader
var screen_width = view_wport[0];  // Ancho del view
var screen_height = view_hport[0]; // Alto del view
var tile_count = 1000;  // La cantidad de mosaicos que quieres aplicar

// Pasar la resolución al shader (vec2)
shader_set_uniform_f(shader_get_uniform(shd_mosaic, "resolution"), screen_width, screen_height);

// Pasar la cantidad de tiles al shader (float)
shader_set_uniform_f(shader_get_uniform(shd_mosaic, "tile_count"), tile_count);

// Dibujar la superficie con el shader aplicado

//camera_set_view_pos(view_camera[0],x-(VIEW_WIDTH*.5),y-(VIEW_HEIGHT*.5));
draw_self();
draw_surface(global.surf_view, x-(VIEW_WIDTH*.5), y-(VIEW_HEIGHT*.5));

// Desactivar el shader
shader_reset();


