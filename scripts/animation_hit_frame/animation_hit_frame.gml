///@arg frame
var frame = argument0;
var frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);

return image_index >= frame and image_index < frame + image_speed;
// will return true or false if our image_index is equal to our frame

// image_index has decimal values to it
// so annoying
// can't just do >= either because can create multiple hurt boxes
// needs to run this code only a single time
// 