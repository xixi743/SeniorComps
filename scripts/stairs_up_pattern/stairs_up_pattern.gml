// Stairs going up, ascending

///@arg height
var height = argument0;

repeat(height) {
	random_midsize_platform();
	y-= random_range(player_height, player_jump_height);
}