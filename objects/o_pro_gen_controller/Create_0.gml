event_inherited();

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
			place_platform160();
			place_platform48();
			pro_gen_increment_y()
			place_platform80();
			pro_gen_decrement_y();
			// i manually placed platforms here for the sake of 
			// just testing it out in my first game room
			
			stairs_pattern();
		}
	}
