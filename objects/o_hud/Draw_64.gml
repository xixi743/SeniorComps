/// @description Draw the HUD

// Draw information onto the screen that follows the view

var hp_x = 8;
var hp_y = 8;
var hp_width = 198;
var hp_height = 6;

if instance_exists(o_player) {
	draw_hp = lerp(draw_hp, o_player.hp, 0.2);
	// draw_hp will approach player's hp by 10% every frame
	draw_max_hp = o_player.max_hp;
} else {
	draw_hp = lerp (draw_hp, 0, 0.2);
}
var hp_percent = draw_hp / draw_max_hp;

draw_rectangle_color(hp_x, hp_y, hp_x + hp_width * hp_percent, hp_y + hp_height,
					c_white, c_white, c_white, c_white, false);
					// have to give GMS2 the top left and bottom right corners
					// of a rectangle to draw it
//draw_rectangle_color(hp_x-2, hp_y-2, hp_x + hp_width+2, hp_y+2 + hp_height,
//					c_dkgray, c_dkgray, c_dkgray, c_dkgray, true);
draw_line_width_color(hp_x-1, hp_y-1, hp_x + hp_width, hp_y-1, 2, c_black, c_black);
draw_line_width_color(hp_x-1, hp_y+hp_height, hp_x+hp_width, hp_y +hp_height, 2, c_black, c_black);
draw_line_width_color(hp_x-1, hp_y-1, hp_x-1, hp_y+hp_height, 2, c_black, c_black);
draw_line_width_color(hp_x +hp_width, hp_y-1, hp_x+hp_width, hp_y+hp_height, 2, c_black, c_black);

