/// @description Insert description here
// This object handles the game over screen. Deletes the player object and draws the gui

instance_destroy(oWeapon_swapper)
instance_destroy(oCar)
audio_stop_all()

respawn_timer = 5
alarm[0] = room_speed * 5
