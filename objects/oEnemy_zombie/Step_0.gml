if hp <= 0 {
	instance_destroy()
}

move_towards_point(oCar.x, oCar.y, spd)

// For the red flash shader
if flash
	flash--;

/**
if (oCar._has_nuke) {
	_nuke_on_zombies = instance_create_layer(x,y, "Bullets", oPowerUp_Nuke_explosion)
	
}
**/