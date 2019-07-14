/// @description Player Movement

var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
// ends up being +1 or -1 depending on what you are pressing
// 0 if pressing both

if hinput != 0 {
	hspeed_ += hinput * acceleration_;
	// adds acceleration to the horizontal speed to the direction that our input it
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
} else {
	// also need decceleration
	// lerp - linear interpolate 
	// approaches a target value by a percentage
	hspeed_ = lerp(hspeed_, 0, friction_)
}

if keyboard_check(vk_right) {
	hspeed_ = 10;
}

else if keyboard_check(vk_left) {
	hspeed_ = -10;
}

else hspeed_ = 0;

// if in the air, apply gravity
if !place_meeting(x, y+1, o_solid) {
	vspeed_ += gravity_;
} else {
	if keyboard_check_pressed(vk_up) {
		vspeed_ = jump_height_;
	}
}


// solid collision system for beginners
// doesn't support angles
if place_meeting(x+hspeed_, y, o_solid) {
	while !place_meeting(x+sign(hspeed_), y, o_solid) {
		x += sign(hspeed_);	// sign gives us a positive or negative one
		// allows us to move up right against the walls
		// if hspeed_ was 11, then it would be checking for 11 pixels
		// and we would see a gap betweeen the player and the wall but the player
		// would no longer be able to move
	}
	hspeed_ = 0;
}

x += hspeed_;

if place_meeting(x, y+vspeed_, o_solid) {
	while !place_meeting(x, y+sign(vspeed_), o_solid) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}
y += vspeed_;