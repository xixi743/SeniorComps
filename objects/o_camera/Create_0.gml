/// @description Set up camera

cam = view_camera[0];
follow = o_player;
view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;
xTo = xstart; //returning original x and y position - not different from x and y
yTo = ystart;
