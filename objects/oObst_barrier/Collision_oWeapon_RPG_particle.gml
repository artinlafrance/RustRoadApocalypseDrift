/// @description Insert description here
// You can write your code in this editor


if (oCar._has_demolition == true) {
	hp -= 1000	
} else {
	hp -= 34	
}

show_debug_message(string(hp))
instance_create_layer(x,y,"Bullets", oWeapon_RPG_explosion)