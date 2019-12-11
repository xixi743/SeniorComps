// place the platform with length 80

instance_create_layer(x, y, "Instances", obj_platform_80x16);
x+= (platform80_length+random_range(minimum_platform_distance, player_jump_distance_x));