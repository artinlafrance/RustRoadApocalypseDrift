/// @description Insert description here
// You can write your code in this editor
if instance_exists(oCar) {
	if oCar.hp <= 0 && oCar._has_revive == false {
		room_goto(GameOverRoom)
	}
}