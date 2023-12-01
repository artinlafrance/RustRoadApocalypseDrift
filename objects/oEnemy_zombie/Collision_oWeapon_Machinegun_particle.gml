/// @description Insert description here
// You can write your code in this editor


if (oCar._has_instakill == true) {
	hp -= 1000	
} else {
	hp -= 50
}
audio_play_sound(zombiehit_sfx, 1, false)

//For the red flash
flash = 10
y = y - 10