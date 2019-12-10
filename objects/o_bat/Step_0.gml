/// @description Bat Behaviors

switch(state) {
	case "chase":
	#region Chase State
	if not instance_exists(o_player) break;
	
		y = lerp(room_height-70,o_player.y+o_player.jump_height_, 0.3);
		
		if place_meeting(x, y, o_player) and attacked = false {
			create_hitbox(x, y, self, sprite_index, knockback, 1, damage, image_xscale);
			attacked = true;
			state = "attacked";
		}
		
		if (x < o_player.x-10) {
			attacked = true;
			state = "attacked";
		}
		#endregion
		break;
		
	case "attacked":
		#region Attacked State
		if attacked == true {
			vspeed = -1;
			// bat flies out of the room after attacking
		}
		#endregion
		break;

	case "death":
		#region Death State
		
		set_state_sprite(s_bat_hurt, 0.7, 0);
		
		if animation_start() {
			audio_play_sound(snd_bat_death, 5, false);
			repeat (experience) {
				instance_create_layer(x+random_range(-4,4), y+random_range(-4,4), "Effects", o_experience);
			}
		}
		
		if animation_end() {
			o_player.kills += 1;
			instance_destroy();
		}
		
		
		#endregion
		break;
	
	default:
		show_debug_message("State " + state +" does not exist");
		state = "chase";
		break;
}