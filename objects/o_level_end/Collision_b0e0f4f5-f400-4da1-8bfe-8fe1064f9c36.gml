/// @description Move to the next room

// if I want disable the trigger while enemies are in the room
//if !object_exists(o_minotaur) and !object_exists(o_skeleton) {
	with (o_player) {
		if (hascontrol) {
			//take control away from the player until the transition finishes
			hascontrol = false;
			slide_transition(TRANS_MODE.NEXT);
		}
	}
//}
