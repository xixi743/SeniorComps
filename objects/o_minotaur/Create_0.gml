event_inherited();

state = "wait";

chase_speed = random_range(1,2);
attack_speed = .8;
attack_range = 45;
idle_range = 300;

knockback = 4;
experience = 10;

// Physics and movement
gravity_ = .7;
vspeed_ = 0;

death_sprite = s_minotaur_damage2;