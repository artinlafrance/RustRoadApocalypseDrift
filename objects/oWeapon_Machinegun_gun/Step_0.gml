/// @description Insert description here
// You can write your code in this editor

image_angle = 90
x = oCar.x
y = oCar.y


recoil = max(0, recoil-1);
if (keyboard_check_pressed(vk_space))
{
	recoil = 4;
	firingdelay = 5;
	with(instance_create_layer(x,y,"Bullets",oWeapon_Machinegun_particle))
	{ 
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
		} 

}

x = x -	lengthdir_x(recoil,image_angle);
y = y -	lengthdir_x(recoil,image_angle);

