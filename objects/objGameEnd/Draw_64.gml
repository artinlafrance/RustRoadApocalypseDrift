/// @description Insert description here
// You can write your code in this editor
var text_x_Dead = (room_width / 2) - 100;
var text_y_Dead = 100;
var text_size = 32;

var text_x_Respawn = 150
var text_y_Respawn = 450
// Draw the black rectangle
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, 900, false);
draw_set_color(c_red);

// Draw the "Paused" text
draw_set_font(arcadefont);
draw_text(text_x_Dead, text_y_Dead, "DEAD");


draw_text(text_x_Respawn, text_y_Respawn, "Press R to restart the level")
