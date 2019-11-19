/// @desc screen_shake(magnitude, frames)
/// @arg magnitude - sets the strenght of the shake (radius in pixels)
/// @arg frames - sets the length of the shake in frame (60 = 1 second at 60fps)

with (o_camera) {
	if (argument0 > shake_remain) {
		// this is great if you want a long but weak shake
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}