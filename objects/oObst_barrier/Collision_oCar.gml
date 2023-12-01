/// @description Insert description here
oCar.hp -= 15
audio_play_sound(obstacle_wooden_sfx,1,false)
var _original_speed = oCar.current_speed
slow_debuff(_original_speed)
instance_destroy()