/// @description Insert description here
// You can write your code in this editor
// Check if objGameController.player is noone
if (instance_exists(oCar) && instance_exists(oWeapon_swapper)) {
	instance_destroy(oCar)
	instance_destroy(oWeapon_swapper)
	instance_create_layer(736, 640, "Bullets", oWeapon_swapper)
	instance_create_layer(704, 608, "Instances", oCar);
} else if (!instance_exists(oCar) && !instance_exists(oWeapon_swapper)) 
{
	instance_create_layer(736, 640, "Bullets", oWeapon_swapper)
	instance_create_layer(704, 608, "Instances", oCar);
}
alarm[0] = room_speed * 3;
level_name = noone
current_level = noone
var target_room;
objGameController.current_level = room

if objGameController.current_level == forest_rm_intro {
		audio_play_sound(forest_theme, 1, true)
		audio_stop_sound(city_theme)
} else if objGameController.current_level == city_rm_intro {
	audio_stop_sound(forest_theme)
	audio_play_sound(city_theme, 1, true)
}


instance_deactivate_all(true)
