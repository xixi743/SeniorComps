/// @description Update Camera

// Update destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
	// gives us the difference of where we want to be from where we currently are
	// moves us 1/25th of the distance between current position and goal position
	// moves fast from far away and then gets slower it gets closer
x += (xTo - x)/25;
y += (yTo -y)/25;

// clamp the camera to a position fixed inside the room
x = clamp(x, view_w_half+buff, room_width-view_w_half-buff);
y = clamp(y, view_h_half+buff, room_height-view_h_half-buff);

// have to do the screenshake after the clamp or it would not work
x += random_range(-shake_remain, shake_remain);
y += random_range (-shake_remain,shake_remain);
shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));
// gives us 1/60th of the total magnitude and removes it from total every frame
// will eventually make shake_remain = 0

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

if (layer_exists("Clouds")) {
	layer_x("Clouds", x/2); // x alone would give maximum depth
	// the smaller we get, it would appear stationary
}

if (layer_exists("GrassHills")) {
	layer_x("GrassHills", x/4);
}