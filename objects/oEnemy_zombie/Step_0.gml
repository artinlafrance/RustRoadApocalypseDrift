if hp <= 0 {
	instance_destroy()
}

// Used to highlight the props that is most effective
if oWeapon_swapper._has_machinegun {
	image_index = 1	
} else {
	image_index = 0	
}



move_towards_point(oCar.x, oCar.y, spd)

if place_meeting(x,y, oObst_barrier) {
	spd = 0
} else {
	spd = 1	
}

// For the red flash shader
if flash
	flash--;

if got_hit == true{
	if knockback_time <= max_knockback_rpg {
		y = y - knockback_coefficient
		knockback_time += knockback_coefficient
	}
	knockback_time = 0
	got_hit = false
}
