/*
This is the script file for the powerups
*/


function manage_instance_powerup() {
	var _x_distance = 150
	var _x_first_distance = 1184
	var _x_position = _x_first_distance - (_x_distance * oCar._num_powerups)
	
	return _x_position
	
	
}

function pick_powerup(){
	var _random_powerup = irandom(3)
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
				oPowerUp_Nuke.mytime += 10
			}
			break;
	}
}

function revive_perk() {
	oCar.hp = 50
}