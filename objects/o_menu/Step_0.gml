/// @description Control menu

//Item ease in
menu_x += (menu_x_target - menu_x)/ menu_speed; //slow down and come to a halt once it comes in

if (menu_control)
{
	if (input.menu_up) {
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
		// if we go above items in menu, it will loop around
	}
	
	if (input.menu_down) {
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if (input.menu_enter) {
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		// this tells us what was picked in the menu
		screen_shake(10,30);
		menu_control = false;
	}
}

if (menu_x > gui_width + 150) && (menu_committed != -1) {
	switch (menu_committed) {
		case 2: default: slide_transition(TRANS_MODE.NEXT); break;
		case 1:
		{
			if (!file_exists(SAVEFILE)) {
				// if there's no save file, treat it like a new game
				slide_transition(TRANS_MODE.NEXT);
			} else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				slide_transition(TRANS_MODE.GOTO, target);
			}
		}
		break;
		case 0: game_end(); break;
	}
}