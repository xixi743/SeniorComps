///@arg height

var height = argument0;

last_platform = 0;

repeat(height) {
	random_small_platform();
	pro_gen_increment_y();
	random_midsize_platform();
	pro_gen_increment_y();
	last_platform = x;
	random_midsize_platform();
	x = last_platform;
	y-= player_jump_height;
	pro_gen_decrement_x();
	last_platform = x;
	random_midsize_platform();
	x = last_platform;
	pro_gen_decrement_x();
}