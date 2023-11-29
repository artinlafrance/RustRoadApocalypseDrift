var text_x = (room_width / 2) - 100;
var text_y = 100;
var text_size = 32;

if (is_paused) {
    // Draw the black rectangle
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, 900, false);
    draw_set_color(c_white);

    // Draw the "Paused" text
    draw_set_font(arcadefont);
    draw_text(text_x, text_y, "Paused");

	
    // Set the position of the quit button in screen space
    var button_x = text_x;
    var button_y = 400;

    // Create and activate the quit button in screen space
    instance_quit_button = instance_create_depth(button_x, button_y, -200, objQuitButton);
    instance_activate_object(instance_quit_button);
}
