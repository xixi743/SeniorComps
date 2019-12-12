event_inherited();

// place the controller

y = floor_start_height - tallest_enemy_height;
x = wall_width+ gap_from_wall;

starting_x = x;
// create some patterns of platforms to generate

// origin is the upper left corner
// y decreases to go up
// x increases going right

// when to stop generating platforms
	// when they are too close to the walls
	if x >= 64 and x <= rm_width - wall_width {
		if y <= floor_start_height {
			climb_up_pattern(5);
			x = starting_x;
			x += platform160_length;
			climb_up_pattern(8);
		}
	}
