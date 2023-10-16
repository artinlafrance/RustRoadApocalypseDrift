var _key_up = keyboard_check(ord("W"))
var _key_down = keyboard_check(ord("S"))
var _key_right = keyboard_check(ord("D"))
var _key_left = keyboard_check(ord("A"))
var _key_lshift = keyboard_check(vk_shift)


if oCar.hp <= 0 && oCar._has_revive {
	revive_perk()
} else if oCar.hp <= 0 && !oCar._has_revive {
	game_over()
}

if _key_up && !is_slow_debuffed {
	current_speed = _acceleration(current_speed)
}

// This is a timer for the slow debuff when hitting an obstacle
if is_slow_debuffed == true {
	slow_elapsed_time += 1
	if (slow_elapsed_time >= slow_duration * room_speed) {
		is_slow_debuffed = false
		slow_elapsed_time = 0
	}
}

//W acts as acceleration key, when it's not pressed it decelerates
if (!_key_up) {
	current_speed = _deceleration(current_speed)
}


if (_key_right && !_key_lshift) {
	current_speed = _turning(current_speed)
	x += current_speed	
}


if (_key_left && !_key_lshift) {
		current_speed = _turning(current_speed)
		x -= current_speed
}

//Handles the drifting mechanic

if (_key_left && _key_lshift && _key_up) {
	current_speed =_drifting(current_speed, spr_car_drift_left)
	x -= current_speed	
}

if (_key_right && _key_lshift && _key_up) {
	
	current_speed = _drifting(current_speed, spr_car_drift_right)
	x += current_speed
	
}

if (_key_up && _key_lshift && !_key_right && !_key_left) {
	sprite_index = default_sprite
}

if (keyboard_check_released(vk_shift)) {
		current_speed = _speed_boost(current_speed)
}
	
	
move_wrap(true, true, 0)
y -= current_speed
