/// @description Create Variables for Health Bar

player_hp = o_player.hp;

var camera_id = view_camera[0];
var view_width = camera_get_view_width(camera_id);
var view_height = camera_get_view_height(camera_id);
display_set_gui_size(view_width, view_height);

x = 16;
y = room_height-16;

image_xscale = 0.5;
image_yscale = 0.5;