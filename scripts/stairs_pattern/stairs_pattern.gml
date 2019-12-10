///@arg x
///@arg y

var pro_gen_x = argument0;
var pro_gen_y = argument1;

times = random_range(3, 5);

repeat(times) {
	instance_create_layer(x, y, "Instances", obj_platform_80x16);
	x+= (platform80_length+random_range(minimum_platform_distance, player_jump_distance_x));
	y-= random_range(player_height, player_jump_height);
}
repeat(times) {
	instance_create_layer(x, y, "Instances", obj_platform_80x16);
	x+= (platform80_length+random_range(minimum_platform_distance, player_jump_distance_x));
	y+= random_range(player_height, player_jump_height);
}


