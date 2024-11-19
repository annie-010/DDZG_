varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform vec2 resolution;
uniform float tile_count;

void main()
{
    // Calcula el tamaño del mosaico
    vec2 tile_size = vec2(1.0 / tile_count, 1.0 / tile_count);
    
    // Corrige las coordenadas de textura usando el tamaño del mosaico
    vec2 mosaic_tile_uv = v_vTexcoord - mod(v_vTexcoord, tile_size);
    
    // Aplica el color de la textura basado en las nuevas coordenadas de mosaico
    gl_FragColor = v_vColour * texture2D(gm_BaseTexture, mosaic_tile_uv);
}
