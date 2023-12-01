/// @description Insert description here
// You can write your code in this editor

text_x = room_width / 2 - 500
text_y = 200
draw_set_font(tutorialfont)
draw_set_color(c_white)
draw_text(text_x, text_y, string_instructions)


if player_got_it == true && next_room == false {
	instance_create_layer(400, 100, "Instances", objCorrect)
	objCorrect.target_room = target_room
	next_room = true
}