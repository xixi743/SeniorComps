// if in the air, apply gravity
// checking if there is anything one block below the player
if !place_meeting(x, y+1, o_solid) {
	vspeed_ += gravity_;
			
}

if place_meeting(x, y+vspeed_, o_solid) {
	while !place_meeting(x, y+sign(vspeed_), o_solid) {
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}
y += vspeed_;


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
		
		//if animation_start() {
		//	audio_play_sound(snd_animal_melee, 5, false);
		//}
		
		if animation_hit_frame(7) {
			create_hitbox(x, y, self, s_skeleton_attack_mask, 3, 4, 10, image_xscale);
			screen_shake(2,5);
		} // RIPPPP realized that I need to create new sprites soley contianing
		// the pixels for the attack so that other parts of the sprite don't become
		// part of the hit box
		
		if animation_end() {
			state = "chase";
		}
		
		#endregion
		break;
		
	case "knockback":
		#region Knockback State

		// enemy keeps on attacking even after hit without this state
		knockback_state(s_skeleton_hit, "chase");
		
		#endregion
		break;
		
	case "death":
		#region Death State
		
		set_state_sprite(s_skeleton_dead, 0.8, 0);
		
		if animation_start() {
			audio_play_sound(snd_enemy_death, 5, false);
		}
		
		if animation_end() {
			instance_destroy();
		}
		
		#endregion
		break;
		
	default:
		show_debug_message("State " + state +" does not exist");
		state = "chase";
		break;
}