x = oCar.x
y = oCar.y
image_index = 0;

if (_shoot_timer > 0) {
    _shoot_timer--; // Decrease the timer each step
}

if (keyboard_check_pressed(vk_space) && _shoot_timer == 0) {
    // Fire bullet
    bullet = instance_create_layer(x, y, "Bullets", oWeapon_RPG_particle);
    if (bullet != noone) {
        bullet.speed = 10;
        bullet.direction = 90; // Set the initial direction to 90 degrees (upwards)
        bullet.image_angle = bullet.direction;
        bullet.y += 30
        // Set the timer to 2 seconds (assuming room_speed is 60)
        _shoot_timer = room_speed * 1; 
    }
}

