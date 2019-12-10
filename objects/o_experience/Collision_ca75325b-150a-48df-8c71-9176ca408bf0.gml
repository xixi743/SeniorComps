/// @description Adding experience to player

if !instance_exists(other) exit;
with (other) {
	experience += 1; //add one exp to player(other)
	if (experience >= max_experience) {
		level += 1;
		experience = experience - max_experience;
			// this handles "overflow" experience
			// if later I want to handle more than 1 exp
		max_experience += max_experience;
			// doubles experience every level up
		max_hp += 5;
		hp += max_hp/2;
		strength += 5;
	}
}
instance_destroy();
