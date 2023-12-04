/// @description Insert description here
// If the player dies go to gameover screen
if instance_exists(oCar) {
	if oCar.hp <= 0 && oCar._has_revive == false {
		room_goto(GameOverRoom)
	}
}