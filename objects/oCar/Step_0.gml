var _key_up = keyboard_check(ord("W"))
var _key_down = keyboard_check(ord("S"))
var _key_right = keyboard_check(ord("D"))
var _key_left = keyboard_check(ord("A"))
var _key_lshift = keyboard_check(vk_shift)

xspd = (_key_right - _key_left) * current_speed;
yspd = (_key_down - _key_up) * current_speed;


if oCar.hp <= 0 && oCar._has_revive == true{
	show_debug_message(string(oCar.hp))
	use_revive_perk()
	
}

//collisions
if place_meeting(x + xspd, y, oObst_brokencar) 
{
	is_collide = true
	oObst_brokencar.oCar_originalspeed = current_speed
	current_speed = 0;	
}
else if place_meeting(x + xspd, y, oObst_brokencar_blue) {
	is_collide = true
	oObst_brokencar_blue.oCar_originalspeed = current_speed
	current_speed = 0;
}
else if place_meeting(x + xspd, y, oObst_brokencar_orange) {
	is_collide = true
	oObst_brokencar_orange.oCar_originalspeed = current_speed
	current_speed = 0;
}
else if place_meeting(x + xspd, y, oObst_brokencar_purple) {
	is_collide = true
	oObst_brokencar_purple.oCar_originalspeed = current_speed
	current_speed = 0;
}
else if place_meeting(x + xspd, y, oObst_brokencar_red) {
	is_collide = true
	oObst_brokencar_red.oCar_originalspeed = current_speed
	current_speed = 0;
}
else if place_meeting(x + xspd, y, oObst_stone5) {
	is_collide = true
	oObst_stone5.oCar_originalspeed = current_speed
	current_speed = 0;
}
else if place_meeting(x + xspd, y, oObst_stone4) {
	is_collide = true
	oObst_stone4.oCar_originalspeed = current_speed
	current_speed = 0;
}
else if place_meeting(x, y+yspd, objCollisionBorderLeft) {
	is_collide_left = true
}
else if place_meeting(x, y+yspd, objCollisionBorderRight) {
	is_collide_right = true	
}
else {
	is_collide = false	
	is_collide_left = false
	is_collide_right = false
}


if _key_up && !is_slow_debuffed && is_collide == false {
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


if (_key_right && !_key_lshift && is_collide_right == false) {
	current_speed = _turning(current_speed)
	x += current_speed	
}


if (_key_left && !_key_lshift && is_collide_left == false) {
		current_speed = _turning(current_speed)
		x -= current_speed
}

//Handles the drifting mechanic

if (_key_left && _key_lshift && _key_up && is_collide_left == false) {
	current_speed =_drifting(current_speed, spr_car_drift_left)
	x -= current_speed	
}

if (_key_right && _key_lshift && _key_up && is_collide_right == false) {
	
	current_speed = _drifting(current_speed, spr_car_drift_right)
	x += current_speed
	
}

if (_key_up && _key_lshift && !_key_right && !_key_left) {
	sprite_index = default_sprite
}

if (keyboard_check_released(vk_shift)) {
		current_speed = _speed_boost(current_speed)
}
y -= current_speed
