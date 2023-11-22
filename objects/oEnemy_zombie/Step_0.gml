if hp <= 0 {
	instance_destroy()
}

move_towards_point(oCar.x, oCar.y, spd)

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
