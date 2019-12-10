/// @description Adding experience to player

if !instance_exists(other) exit;
with (other) {
	global.experience += 1; //add one exp to player(other)
	if (global.experience >= global.max_experience) {
		global.level += 1;
		global.experience = global.experience - global.max_experience;
			// this handles "overflow" experience
			// if later I want to handle more than 1 exp
		global.max_experience += global.max_experience;
			// doubles experience every level up
		global.max_hp += 5;
		global.hp = global.max_hp;
		global.strength += 5;
	}
}
instance_destroy();
