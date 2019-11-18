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
	
	case "wait":
		#region Wait State
		set_state_sprite(s_minotaur_idle, 1, 0);
		
		if !instance_exists(o_player) break;
		
		var direction_facing = image_xscale;
		var distance_to_player = point_distance(x, y, o_player.x, o_player.y);
		
		if (distance_to_player > attack_range && distance_to_player < idle_range) {
				state = "taunt";
		}
		#endregion
		break;
	
	case "taunt":
		#region Taunt State
		set_state_sprite(s_minotaur_taunt, .8, 0);
		
		if animation_end() {
			state = "chase"
		}
		
		#endregion
		break;
	
	case "chase":
		#region Chase State
		set_state_sprite(s_minotaur_move, 1, 0);
		
		// find out player and attempt to move towards the player
		// check if player exists
		if !instance_exists(o_player) break;
		
		image_xscale = (sign(o_player.x - x))*2;
		// sign function returns -1, 0, or 1
		// returns -1 if if value is negative
		// if values are the same, then it returns 0
		if image_xscale == 0 {
			image_xscale = 2;
		}
		// makes minotaur face player at all times
	
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
		set_state_sprite(s_minotaur_attack1, attack_speed, 0);
		
		if animation_hit_frame(2) {
			create_hitbox(x, y, self, s_minotaur_attack1_mask, 3, 4, 10, image_xscale);
		}
		
		if animation_end() {
			state = "attack2";
		}
		
		#endregion
		break;
		
	case "attack2":
		#region Attack 2 State
		set_state_sprite(s_minotaur_attack2, attack_speed,0);
		
		if animation_hit_frame(1) {
			create_hitbox(x,y, self, s_minotaur_attack2_mask, 3, 4, 10, image_xscale);
		}
			
		if animation_end() {
			state = "attack3";
		}
		
		#endregion
		break;
		
		case "attack3":
		#region Attack 3 State
		set_state_sprite(s_minotaur_attack3, attack_speed,0);
		
		if animation_hit_frame(3) {
			create_hitbox(x,y, self, s_minotaur_attack3_mask, 3, 4, 10, image_xscale);
		}
		
		if animation_end() {
			state = "chase";
		}
		
		#endregion
		break;
		
	case "knockback":
		#region Knockback State

		// enemy keeps on attacking even after hit without this state
		set_state_sprite(s_minotaur_damage2, .8, 0);
		image_xscale = -sign(knockback_speed);
		image_xscale = image_xscale * 2;
		move_and_collide(knockback_speed, 0);
		
		// add friction, rather than sliding across the screen at a constant pace
		var knockback_friction = 0.6;
		knockback_speed = approach(knockback_speed, 0, knockback_friction);
		if knockback_speed == 0 {
			if animation_end {
				knockback_speed = 0;
				state = "wait";
			}
		}
		
		#endregion
		break;
		
	default:
		show_debug_message("State " + state +" does not exist");
		state = "chase";
		break;
}