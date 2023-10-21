
x = oCar.x + 30;
y = oCar.y;

if (keyboard_check_pressed(vk_space) && !_flamethrower_on) {
    _flamethrower_on = true;
    bullet = instance_create_layer(x, y, "Bullets", oWeapon_Flamethrower_particle);
    if (bullet != noone) {
        bullet.speed = 25;
        bullet.direction = other.image_angle;
        bullet.image_angle = bullet.direction;
		
    }
}


if (keyboard_check_released(vk_space) && _flamethrower_on && instance_exists(bullet)) {
    _flamethrower_on = false;
    // Delete the bullet (destroy the bullet instance)
    instance_destroy(bullet);
}
