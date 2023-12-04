/// @description Insert description here
// Logic that handles each tutorial room

// Player weapon swap tutorial
if current_room == 1 {
	if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) && player_got_it == false && next_room == false
	{
		player_got_it = true 
		target_room = Room2Tutorial
	}
	
}

// Player shooting tutorial
else if current_room == 2 {
	if (keyboard_check_pressed(vk_space)) {
		player_got_it = true
		target_room = Room3Tutorial
	}
}

// Player shoot obstacle tutorial
else if current_room == 3 {
	if(!instance_exists(inst_7FF7F40)){
		player_got_it = true
		target_room = Room4Tutorial
	}
}

// Player shoot zombie tutorial
else if current_room == 4 {
	if	(!instance_exists(inst_460D7908)){
		player_got_it = true
		target_room = Room5Tutorial
	}
	
}

// Player movement tutorial
else if current_room == 5 {
	if keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("A")) {
		player_got_it = true
		target_room = Room6Tutorial
	}
}

// Player drifting tutorial
else if current_room == 6 {
	if oCar._is_drifting == true {
		player_got_it = true
		target_room = Room7Tutorial
	}
}

// Player pickup hp tutorial
else if current_room == 7 {
	if instance_exists(inst_3126A5BA){
		oCar.hp = 70
	}
	else if(!instance_exists(inst_3126A5BA)) {
		player_got_it = true
		target_room = desert_rm_intro
		objGameController.tutorial_completed = true
	}
	
}
