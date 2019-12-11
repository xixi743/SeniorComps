pattern_start_x = x;

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


