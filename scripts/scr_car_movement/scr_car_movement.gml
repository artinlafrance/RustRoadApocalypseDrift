/*
This script handles the players movement. This includes speedboost and drifting.

*/

//Core car variables
var _max_speed
var _max_speed_sb //max speed if speedboosted
var _accel
var _decel
var _frict
var _original_speed = 0

//Drifting variables
var _drift_speed
var _drift_coefficient = 2
var _drift_counter = 1
var _is_drifting = false

//Speed boost variables
var _sb_coefficient
var _sb_duration
var _sb_current_time = 0

//Constructor for movement data (GML is stupid bad so I have to do this workaround)
function initialize_movement(_maximum_speed, _maximum_speed_sb, 
_accelerationcoefficient, _decelerationcoefficient, _friction, _driftspeedcoefficient,
_speed_boost_coefficient, _speed_boost_duration) {
	
	_max_speed = _maximum_speed
	_max_speed_sb = _maximum_speed_sb
	_accel = _accelerationcoefficient
	_decel = _decelerationcoefficient
	_frict = _friction
	_drift_coefficient = _driftspeedcoefficient
	_is_drifting = false
	_drift_speed = 0
	_sb_coefficient = _speed_boost_coefficient
	_sb_duration = _speed_boost_duration
	_sb_current_time = 0
}

function set_speed(_speed) {
	oCar.current_speed = _speed
}

function _acceleration(_current_speed) {
	if (_current_speed == 0) {
		_current_speed = 0.1	
	}
	if (_current_speed < _max_speed) {
		_current_speed += _current_speed * _accel
		
		if (_current_speed > _max_speed) {
			_current_speed = _max_speed	
		}
	
	}
	return _current_speed
}


function _deceleration(_current_speed) {
	_current_speed -= _current_speed * _decel
	return _current_speed
}


function _turning(_current_speed) {
		if (_current_speed > 1) {
			_current_speed -= _current_speed * _frict
		}
		return _current_speed
}


function _drifting(_current_speed, _sprite) {
	
	if (_is_drifting == false) {
		_drift_speed = _current_speed / _drift_coefficient

	}
	
	sprite_index = _sprite
	_is_drifting = true
	
	if (drift_counter < 100) {
			drift_counter += 1
	}
	
	show_debug_message("Drift counter : " + string(drift_counter))
	return _drift_speed

}


function _speed_boost(_current_speed) {	
	while (drift_counter > 0) {
		current_speed += _sb_coefficient
		drift_counter -= 25
	}
	
	sprite_index = default_sprite
	_is_drifting = false
	drift_counter = 0
	_is_speed_boosted = true
	
	
	return current_speed
}

function slow_debuff(_og_speed) {
		var _slow_speed = _og_speed / 2
		set_speed(_slow_speed)
		oCar.is_slow_debuffed = true
		oCar.slow_elapsed_time = 0
}

