///@description 

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_up);
attack = keyboard_check_pressed(vk_space);
// if don't want continuous attacking here, change to keyboard_check_pressed

menu_up = keyboard_check_pressed(vk_up);
menu_down = keyboard_check_pressed(vk_down);
menu_enter = keyboard_check_pressed(vk_space);

// Map the keys
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("D"), vk_right);
keyboard_set_map(vk_enter, vk_space);
