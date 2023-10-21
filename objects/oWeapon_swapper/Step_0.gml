x = oCar.x
y = oCar.y

// Check for left arrow key press to cycle left through weapons
if (keyboard_check_pressed(vk_left)) {
    _current_weapon -= 1;
    if (_current_weapon < 0) {
        _current_weapon = _total_weapons - 1; // Wrap around to the last weapon
    }
}

// Check for right arrow key press to cycle right through weapons
if (keyboard_check_pressed(vk_right)) {
    _current_weapon += 1;
    if (_current_weapon >= _total_weapons) {
        _current_weapon = 0; // Wrap around to the first weapon
    }
}

switch(_current_weapon) {
	//flamethrower
	case 0:
		_has_rpg = false
		_has_machinegun = false
		instance_destroy(_machinegun)
		instance_destroy(_rpg)
		
		if _has_flamethrower == false {
			_flamethrower = instance_create_layer(x,y, "Instances", oWeapon_Flamethrower_gun)
			_has_flamethrower = true
		}
		
		break;
	//RPG
	case 1:
		_has_flamethrower = false
		instance_destroy(_flamethrower)
		_has_machinegun = false
		instance_destroy(_machinegun)
		
		if _has_rpg == false {
			_rpg = instance_create_layer(x,y, "Instances", oWeapon_RPG_gun)
			_has_rpg = true
		}
		
		break;
		
	//MachineGun
	case 2:
		_has_rpg = false
		instance_destroy(_rpg)
		
		_has_flamethrower = false
		instance_destroy(_flamethrower)
		
		if _has_machinegun == false {
			_machinegun = instance_create_layer(x, y, "Instances", oWeapon_Machinegun_gun)
			_has_machinegun = true
		}
		break;
}