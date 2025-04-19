if _shaderdraw==true {
gpu_set_texfilter(true);
shader_set(shd_pixelatedmosaic);
var uniform_resolution = shader_get_uniform(shd_pixelatedmosaic,"resolution");
var unfiform_tile_count = shader_get_uniform(shd_pixelatedmosaic,"tile_count");
shader_set_uniform_f(uniform_resolution, sprite_get_width(spr_blindeffectUNO), sprite_get_height(spr_blindeffectUNO));
shader_set_uniform_f(unfiform_tile_count, tile_count);
draw_sprite(spr_blindeffectUNO,0,oCameraTarget.x,oCameraTarget.y);
shader_reset();
}