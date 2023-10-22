/// @description Health Bar
draw_sprite(spr_healthbarbg, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(spr_healthtexture, 0, healthbar_x, healthbar_y, (hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(spr_healthbar, 0, healthbar_x, healthbar_y);

draw_sprite(spr_GUIpeoplesaved, 0, 10, 65)
draw_set_font(powerupalarm)
draw_set_color(c_white);
draw_text(65, 70,_people_saved)