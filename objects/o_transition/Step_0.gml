/// @description Progress the transition

// assuming we are not in mode off
if (mode != TRANS_MODE.OFF) {
	if (mode == TRANS_MODE.INTRO) {
		percent = max(0, percent - max((percent/10), 0.005));
		// reducing our percent by 1/10th
		// reducing the amount its recducing it by
	} else {
		percent = min(1.2, percent + max (((1.2 - percent)/10), 0.005));
		// we want 10% of the distance we have left to go
	}
	
	if (percent == 1.2) || (percent == 0) {
		switch (mode) 
		{
			case TRANS_MODE.INTRO: 
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				// go to the next room
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}	
}
