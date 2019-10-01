/// @description Create the variables

state = "move";


// Image speeds
image_speed = 0;
idle_speed = .6;
run_speed = 4;
jump_speed = 0;

// Physics and movement
hspeed_ = 0;
max_hspeed_ = 1;
vspeed_ = 0;
gravity_ = .7;
acceleration_ = 1.5;
friction_ = .3;
jump_height_ = -10;

// Map the keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);