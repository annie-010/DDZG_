// En el evento Create del objeto controlador de partículas
part_sys = part_system_create();
part_sys_depth = 0; // Ajusta la profundidad si es necesario

// Crear el emisor de partículas
emisor_dano = part_emitter_create(part_sys);
part_emitter_region(part_sys, emisor_dano, x, x, y, y, ps_shape_rectangle, ps_distr_linear);

// Configurar las partículas
particula_dano = part_type_create();
part_type_sprite(particula_dano, spr_damage_number, true, false, false); // Usa tu sprite de daño

// Ajustar la vida de la partícula
part_type_life(particula_dano, 30, 60); // Vida de la partícula en frames

// Añadir gravedad
part_type_gravity(particula_dano, 0.2, 270); // Gravedad hacia abajo con una fuerza de 0.2

// Configurar la transparencia
part_type_alpha2(particula_dano, 1, 0); // Inicia opaco y se desvanece a transparente

// Configurar la escala (opcional)
part_type_scale(particula_dano, 1, 1); // Mantén la escala constante

alarm[0]=1;