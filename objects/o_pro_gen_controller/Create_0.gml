/// @description variables for procedural gener

//Good variables to have

// player jump height
// player jump distance (280 estimate)
// tallest enemy height (so it doesn't bump into platforms
// room size

player_jump_height = 100;
player_height = 56;
player_jump_distance_x = 210;
minimum_platform_distance = 20;
tallest_enemy_height = 125;
floor_start_height = room_height - (16*4);
wall_width = 64; //16*4
gap_from_wall = 75;
platform48_length = 48;
platform80_length = 80;
platform160_length = 160;
platform320_length = 320;

rm_width = room_width;
rm_height = room_height;

// so we could try a semi-random generation method
// where we do not generate blocks a certain amount from the bottom of the room
// - to have space to walk under it
// also have that amount of space above it for the player to walk around

// Generate the level
//instance_create_layer (x+400, y, "Instances", o_solid);

// place the controller

y = floor_start_height - tallest_enemy_height;
x = wall_width+ gap_from_wall;

// create some patterns of platforms to generate

// origin is the upper left corner
// y decreases to go up
// x increases going right

// when to stop generating platforms
	// when they are too close to the walls
	if x >= 64 and x <= rm_width - wall_width {
		if y <= floor_start_height {
			instance_create_layer (x, y, "Instances", obj_platform_160x16);
			x += (platform160_length+random_range(minimum_platform_distance,player_jump_distance_x));
			instance_create_layer (x, y, "Instances", obj_platform_48x16);
			x+= (platform48_length+random_range(minimum_platform_distance,player_jump_distance_x));
			y-= random_range(player_height, player_jump_height);
			instance_create_layer (x, y, "Instances", obj_platform_80x16);
			x+= (platform80_length+random_range(minimum_platform_distance, player_jump_distance_x));
			y+= random_range(player_height, player_jump_height);
			
			stairs_pattern(x, y);
			
		}
	}
