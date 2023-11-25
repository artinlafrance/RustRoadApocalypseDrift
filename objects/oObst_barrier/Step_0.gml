/// @description Insert description here
// You can write your code in this editor

//Used to highlight the weapons that are most effective
if oWeapon_swapper._has_flamethrower {
	
	image_index = 1	
} else {
	image_index = 0	
}

if hp <= 0 {
	instance_destroy()	
}