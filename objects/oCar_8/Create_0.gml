/// @description Initialized Properties

//Used for powerup randomization each time game is opened
randomize()

enteredRoom = false;

//For the HP of the car
hp = 100
hp_max = hp;

healthbar_width = 289;
healthbar_height = 36;
healthbar_x = 20
healthbar_y = 25

//People saved
_people_saved = 0


//For the powerups
_has_instakill = false
_has_demolition = false
_has_revive = false
_has_nuke = false
_num_powerups = -1


//Once the car reaches top speed the acceleration is put to 0
accel = 0.15
max_speed_no_sb = 5;
max_speed_sb = 15;
current_speed = 0;
decel = 0.030
frict = 0.025 //Friction is a percentage value between 0 and 1 Example 0.1 = 10% Friction (10% decrease in speed)

drift_speed_coefficient = 2 //When drifting this value is used to slow the car down. It's set to 2 so it divides the cars speed by 2
drift_counter = 0 //Checks how many frames the player has been drifting 1 to 100 value
drift_speed = 0 //This is the speed of the car when drifting

//collision
is_collide = false

// Modifiers to the speed boost
speed_boost_coefficient = 1.3
speed_boost_duration = 4
speed_boost_timer = 0
is_speed_boosted = false

// Modifiers to the slow debuff
is_slow_debuffed = false
slow_duration = 2
slow_elapsed_time = 0

initialize_movement(max_speed_no_sb, max_speed_sb, accel, decel, frict, drift_speed_coefficient,
speed_boost_coefficient, speed_boost_duration)


//default car sprite

default_sprite = spr_car_up

//Position of car
previous_x = x;
previous_y = y;
car_facing_direction = image_angle

road = layer_tilemap_get_id("Tileset_barrier")