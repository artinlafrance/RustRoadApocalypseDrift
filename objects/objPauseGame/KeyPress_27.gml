/// @description Insert description here
// You can write your code in this editor
if is_paused == false {
	instance_deactivate_all(true)
	is_paused = true
}
else {
	instance_destroy(objQuitButton)
	instance_activate_all();
	is_paused = false
}