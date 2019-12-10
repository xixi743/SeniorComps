/// @description Insert description here

/// @description Draw Health Bar

if object_exists(o_player) {

	if player_hp == 100 {
		sprite_index = s_health_full_no_heart;
	}

	if player_hp < 100 and player_hp >= 80 {
		sprite_index = s_health_1;
	}

	if player_hp < 80 and player_hp >= 60 {
		draw_sprite(s_health_2, 0, health_x, health_y);
	}

	if player_hp < 60 and player_hp >= 40 {
		draw_sprite(s_health_3, 0, health_x, health_y);
	}

	if player_hp < 40 and player_hp >= 20 {
		draw_sprite(s_health_4, 0, health_x, health_y);
	}

	if player_hp < 20 and player_hp >= 0 {
		draw_sprite(s_health_empty, 0, health_x, health_y);
	}
} else {
	exit;
}