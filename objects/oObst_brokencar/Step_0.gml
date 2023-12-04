if hp <= 0 {
	instance_destroy()
}

//Swap to the highlighted sprite if its an rpg
if oWeapon_swapper._has_rpg {
	image_index = 1	
} else {
	image_index = 0
}