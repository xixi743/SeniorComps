/// @description Move to the next room

with (o_player) {
	if (hascontrol) {
		//take control away from the player until the transition finishes
		hascontrol = false;
		slide_transition(TRANS_MODE.NEXT);
	}
}
