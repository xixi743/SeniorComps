switch (state) {
	case "chase":
		set_state_sprite(s_big_zombie_run, 1, 0);
		
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
		var distance_to_player = point_distance(x, y, o_player.x, o_player.y);
		
		if distance_to_player > 42 // change # to variable later
		{
			//move towards the player
			move_and_collide(image_xscale * .7, 0)
		}
		break;
}