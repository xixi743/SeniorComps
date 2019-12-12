///@arg height

var height = argument0;

pattern_start_x = x;

repeat(height) {
	random_small_platform();
	random_small_platform();
	x = choose(pattern_start_x + irandom_range(0,100), pattern_start_x-irandom_range(0,100));
	pro_gen_increment_y();
	y += 40;
}