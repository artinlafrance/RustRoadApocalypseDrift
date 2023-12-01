/// @description Insert description here
// You can write your code in this editor
if (oCar._has_instakill == true) {
	hp -= 1000	
} else {
	hp -= 1
}
audio_play_sound(zombiehit_sfx, 1, false)


//For the red flash
flash = 10