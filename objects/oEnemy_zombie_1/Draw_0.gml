/// @description Used to create the red flash when the zombie takes damage
if flash {
	shader_set(shd_ZombieDamage)
	draw_sprite(sprite_index, image_index, x, y);
	shader_reset()
} else {
	draw_sprite(sprite_index, image_index, x, y)	
}