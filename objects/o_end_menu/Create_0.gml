/// @description GUI/Vars/Menu setup

audio_play_sound(snd_for_me, 5, true);

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = f_menu;
menu_itemheight = font_get_size(menu_font);
menu_committed = -1;
menu_control = true; //whether or not we have control of the menu


menu[2] = "Restart"; // more efficient to declare an array and start with the biggest variable
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 2;

input = instance_create_layer(0, 0, "Instances", o_input);

