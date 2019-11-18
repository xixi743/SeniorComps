/// @description Size variables and mode set up

w = display_get_gui_width();
h = display_get_gui_height();

h_half = h/2;

// enums are good for turning a set ordered numbers into readable words
// so a coding structure
// can't change an enum once it has been declared
// great for constants
// also global in scope so they can be referred to from anywhere
enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room; // what room we are transitioning to


