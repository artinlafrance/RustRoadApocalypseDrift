if instance_exists(oWeapon_Flamethrower_gun) {
	x = oWeapon_Flamethrower_gun.x - 10
	y = oWeapon_Flamethrower_gun.y + 40
} else {
	instance_destroy()	
}