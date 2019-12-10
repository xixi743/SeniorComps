event_inherited();

state = "chase";
hp = 1; // only takes one hit
max_hp = hp;

experience = 3;

image_speed = 0.8;
hspeed = random_range(1.5, 2.5);
if instance_exists(o_player) {
	hspeed *= sign(o_player.x - x);
	// making sure always going toward the player
	// want negative hspeed to go left
	// positive hspeed to go right
	// so just end up with -1 or +1
}
image_xscale = sign(-hspeed);
	// actually have no clue what is going on with image_xscale here ahhh
	// I can't get it to flip the image correctly when the player moves to the other side
	// quick solution is to just always have the bat coming from the right
	// but that's infuriating bc it works with other characters RIP
	// messed around with the placement of the negative bc I think that would be it....
	
damage = 2;
attacked = false;

knockback = 4;
