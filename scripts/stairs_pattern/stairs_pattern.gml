// Full stairs pattern going up and down

///@arg height

var height = argument0;

repeat(height) {
	random_midsize_platform();
	y-= random_range(player_height, player_jump_height);
}
repeat(height) {
	random_midsize_platform();
	y+= random_range(player_height, player_jump_height);
}