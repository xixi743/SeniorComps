///@arg x
///@arg y

var pro_gen_x = argument0;
var pro_gen_y = argument1;

pattern_start_x = pro_gen_x;
pattern_start_y = pro_gen_y;

times = random_range(3, 10);

repeat(times) {
	instance_create_layer(x, y, "Instances", obj_platform_48x16);
	x+= (platform48_length+random_range(minimum_platform_distance, player_jump_distance_x));
}
x = pattern_start_x;
y -= tallest_enemy_height

repeat(times) {
	instance_create_layer(x, y, "Instances", obj_platform_48x16);
	x+= (platform48_length+random_range(minimum_platform_distance, player_jump_distance_x));
}


