/// @description Insert description here
// You can write your code in this editor
if (oCar._has_instakill == true) {
	hp -= 1000	
} else {
	hp -= 50
}


instance_create_layer(x,y,"Bullets", oWeapon_RPG_explosion)
//For the red flash
flash = 10
audio_play_sound(rpg_collision_sfx, 1, false)

got_hit = true

