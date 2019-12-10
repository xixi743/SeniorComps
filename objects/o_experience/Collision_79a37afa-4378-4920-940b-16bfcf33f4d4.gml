/// @description Insert description here

if !instance_exists(other) exit;

// moving away from collision
var dir = point_direction(x, y, other.x, o_player.y);
var acceleration = random_range(0.3, 0.5);
motion_add(dir, acceleration);