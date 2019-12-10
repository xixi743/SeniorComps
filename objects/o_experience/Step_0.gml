/// @description Insert description here

if !instance_exists(o_player) exit;

// moving towards the player
var dir = point_direction(x,y,o_player.x, o_player.y);
var acceleration = random_range(0.2, 0.6);
motion_add(dir, acceleration);

var max_speed = 6;

if speed > max_speed {
	speed = max_speed;
}
