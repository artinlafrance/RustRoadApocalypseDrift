//Upon impact with a vehicle damage the player

if oCar_originalspeed >= 2.5 {
	oCar.hp -= oCar_originalspeed * 2.5
}

if (!has_collided) {
	audio_play_sound(obstacle_vehicle_sfx, 1, false)
	has_collided = true
}