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
x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);