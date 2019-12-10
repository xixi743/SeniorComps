/// @description Draw the HUD

// Draw information onto the screen that follows the view
draw_set_font(text_font);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

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

draw_line_width_color(hp_x-1, hp_y-1, hp_x + hp_width, hp_y-1, 2, c_black, c_black);
draw_line_width_color(hp_x-1, hp_y+hp_height, hp_x+hp_width, hp_y +hp_height, 2, c_black, c_black);
draw_line_width_color(hp_x-1, hp_y-1, hp_x-1, hp_y+hp_height, 2, c_black, c_black);
draw_line_width_color(hp_x +hp_width, hp_y-1, hp_x+hp_width, hp_y+hp_height, 2, c_black, c_black);

if not instance_exists(o_player) exit;

var text = "Kills: " + string(global.kills);
var text_width = string_width(text);
var text_height = string_height(text);
var start_x = 8;
var start_y = 25;
var padding_x = 6;
var padding_y = 4;

draw_rectangle_color(start_x, start_y, start_x+text_width+padding_y, start_y+text_height+padding_y, c_white, c_white, c_white, c_white, false);
draw_text(start_x+padding_x/2, start_y+padding_y+text_height, text);

var text = "Level: " + string(global.level);
start_x += text_width + padding_x*2;
var text_width = string_width(text);
var text_height = string_height(text);


draw_rectangle_color(start_x, start_y, start_x+text_width+padding_y, start_y+text_height+padding_y, c_white, c_white, c_white, c_white, false);
draw_text(start_x+padding_x/2, start_y+padding_y+text_height, text);
