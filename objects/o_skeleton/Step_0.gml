switch (state) {
	case "chase":
		#region Chase State
		set_state_sprite(s_skeleton_walk, 1, 0);
		
		// find out player and attempt to move towards the player
		// check if player exists
		if !instance_exists(o_player) break;
		
		image_xscale = (sign(o_player.x - x))*3;
		// sign function returns -1, 0, or 1
		// returns -1 if if value is negative
		// if values are the same, then it returns 0
		if image_xscale == 0 {
			image_xscale = 3;
		}
		// makes zombie face player at all times
	
		// now we actually need to move towards the player
		var direction_facing = image_xscale;
		var distance_to_player = point_distance(x, y, o_player.x, o_player.y);
		
		if distance_to_player <= attack_range {
			state = "attack";
		} else {
			//move towards the player
			move_and_collide(direction_facing * chase_speed, 0);
		}
		#endregion
		break;
		
	case "attack":
		#region Attack State
		set_state_sprite(s_skeleton_attack, attack_speed, 0);
		
		if animation_end() {
			state = "chase";
		}
		
		#endregion
		break;
}