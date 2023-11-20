// Initialize variables if not already done
x = oCar.x
y = oCar.y

if firingdelay > 0 {
	firingdelay -= 1
}

recoil = max(0, recoil-1);
if (keyboard_check(vk_space) && firingdelay == 0)
	{
		recoil = 4;
		with(instance_create_layer(x,y,"Bullets",oWeapon_Machinegun_particle))
		{ 
			speed = 25;
			direction = other.image_angle + random_range(-3,3);
			image_angle = direction;
			}
		firingdelay = 5;
	}

x = x -	lengthdir_x(recoil,image_angle);
y = y -	lengthdir_x(recoil,image_angle);


// Update position based on recoil
x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);
