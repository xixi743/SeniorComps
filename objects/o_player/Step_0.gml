/// @description Insert description here

switch (state)
{
	case "move":
		#region Move State
		var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
		// ends up being +1 or -1 depending on what you are pressing
		// 0 if pressing both

		if !keyboard_check(vk_right) and !keyboard_check(vk_left) {
			sprite_index = s_player_idle;
			image_speed = idle_speed;
		}

		if keyboard_check(vk_right) and keyboard_check(vk_left) {
			sprite_index = s_player_idle;
			image_speed= idle_speed;
		}

		if hinput != 0 {
			hspeed_ += hinput * acceleration_;
			// adds acceleration to the horizontal speed to the direction that our input is
			hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
		} else {
			// also need decceleration
			// lerp - linear interpolate 
			// approaches a target value by a percentage
			hspeed_ = lerp(hspeed_, 0, friction_)
			sprite_index = s_player_idle;
			image_speed = idle_speed;
		}

		if keyboard_check(vk_right) and !place_meeting(x+hspeed_, y, o_solid) {
			// checking x+4 because that's where we will be moving
			hspeed_ = 8;
			image_xscale = 3;
			sprite_index = s_player_run_right;
			image_speed = run_speed / 3;
		}

		if keyboard_check(vk_left) and !place_meeting(x-hspeed_, y, o_solid) {
			hspeed_ = -8;
			image_xscale = -3;
			sprite_index = s_player_run_right;
			image_speed = run_speed / 3;
		}

		// if in the air, apply gravity
		// checking if there is anything one block below the player
		if !place_meeting(x, y+1, o_solid) {
			vspeed_ += gravity_;
		} else {
			if keyboard_check_pressed(vk_up) {
				vspeed_ = jump_height_;
			}
		}

		if keyboard_check(vk_up) {
			sprite_index = s_player_jump;
			image_speed = jump_speed;
		}

		if keyboard_check_pressed(vk_space) {
			image_index = 0;
			state = "attack";
		}

		if place_meeting(x+hspeed_, y, o_solid) {
			//prevents the gap between the wall and the player
			while !place_meeting(x+sign(hspeed_), y, o_solid) { //while we are not quite touch the wall
				//move over one pixel
				x += sign(hspeed_);	// sign gives us a positive or negative one
				// allows us to move up right against the walls
			}
			hspeed_ = 0;
		}

		x += hspeed_;

		if place_meeting(x, y+vspeed_, o_solid) {
			while !place_meeting(x, y+sign(vspeed_), o_solid) {
				y += sign(vspeed_);
			}
			vspeed_ = 0;
		}
		y += vspeed_;
		#endregion
		break;
		
	case "attack":
		#region Roll State
		sprite_index = s_player_attack;
		image_speed = 1;
	
		// tutorial does roll event here and wants x to increment as they roll
		// i do not want my character to move during attack, so I will leave it
		// wihout the changes to hspeed_ / x
		#endregion
		break;
}