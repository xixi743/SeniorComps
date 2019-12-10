/// @description Create the variables

audio_stop_sound(snd_for_me);
if !audio_is_playing(snd_title_theme) {
	audio_play_sound(snd_title_theme, 2, true);
}

event_inherited();
	// runs the create event of the parent

state = "move";
hp = 100;
max_hp = hp;
kills = 0;
level = 1;
experience = 0;
max_experience = 10;
strength = 25;

// Dependencies
input = instance_create_layer(0, 0, "Instances", o_input);
	// giving us access to our input object

// Image speeds
image_speed = 0;
idle_speed = .6;
run_speed = 4;
jump_speed = 0;

// Physics and movement
hspeed_ = 0;
max_hspeed_ = 1;
vspeed_ = 0;
gravity_ = .7;
acceleration_ = 1.5;
friction_ = .3;
jump_height_ = -14;
run_speed_mvmt = 4;

hascontrol = true;

