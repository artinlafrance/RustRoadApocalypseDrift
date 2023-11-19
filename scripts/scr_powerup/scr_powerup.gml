/*
This is the script file for the powerups
*/


function manage_instance_powerup() {
	var _x_distance = 75
	var _x_first_distance = 1275
	
	//reset the powerups gui location
	if (oCar._num_powerups <= 1) {
		_x_first_distance = 1275
	}
	
	var _x_position = _x_first_distance - (_x_distance * oCar._num_powerups)
	
	return _x_position
	
	
}

function pick_powerup(){
	var _random_powerup = irandom(2)
	var _selected_powerup;
	
	switch (_random_powerup)
	{
		case 0:
			if (oCar._has_instakill == false) {
				oCar._has_instakill = true
				oCar._num_powerups += 1
				_selected_powerup = instance_create_layer(manage_instance_powerup(), 0, "Instances", oPowerUp_Instakill)
				return _selected_powerup
			} else {
				oPowerUp_Instakill.mytime += 10
			}
			break;
			
		case 1:
			if (oCar._has_demolition == false) {
				oCar._has_demolition = true
				oCar._num_powerups += 1
				_selected_powerup = instance_create_layer(manage_instance_powerup(), 0, "Instances", oPowerUp_Demolition)
				return _selected_powerup
			} else {
				oPowerUp_Demolition.mytime += 10
			}
			break;
			
		case 2:
			if (oCar._has_revive == false) {
				oCar._has_revive = true
				oCar._num_powerups += 1	
				_selected_powerup = instance_create_layer(manage_instance_powerup(), 0, "Instances", oPowerUp_Revive)
				return _selected_powerup
			} else {
				oPowerUp_Revive.mytime += 10
			}
			break;
			
		case 3:
			if (oCar._has_nuke == false) {
				oCar._has_nuke = true
				oCar._num_powerups += 1
				_selected_powerup = instance_create_layer(manage_instance_powerup(), 0, "Instances", oPowerUp_Nuke)
				 return _selected_powerup
			} else {
				oPowerUp_Nuke.mytime += 5
			}
			break;
	}
}

function use_revive_perk() {
	audio_play_sound(powerup_revive_sfx, 1, false)
	revive_anim = instance_create_layer(x, y, "Instances", oPowerUp_Revive_Anim)
	oCar.hp = 50
	oCar._has_revive = false
}