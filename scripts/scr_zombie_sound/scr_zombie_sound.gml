// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function randomZombieSound() {
var zombie_sfx = [
	zombie1_sfx,
	zombie2_sfx,
	zombie3_sfx
];

var randomSound = zombie_sfx[irandom(array_length(zombie_sfx) - 1)]
audio_play_sound(randomSound, 1, false)
}