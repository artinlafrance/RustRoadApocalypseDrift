/// @description Insert description here
// This object controls the logic of how the game plays out. (Spawns the car and goes to game over screen)
tutorial_completed = false
player_dead = false
player = noone
current_level = noone

//Initialize the player car and the weapon object
instance_create_layer(736, 640, "Bullets", oWeapon_swapper)
instance_create_layer(0, 0, "Instances", oCar)
