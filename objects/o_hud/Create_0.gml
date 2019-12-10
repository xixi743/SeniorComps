/// @description Insert description here

var camera_id = view_camera[0];
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);

if not instance_exists(o_player) exit;
draw_hp = o_player.hp;

text_font = f_hud;