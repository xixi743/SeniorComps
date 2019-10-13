///@arg knockback_sprite
///@arg next_state

var knockback_sprite = argument0;
var next_state = argument1;



set_state_sprite(knockback_sprite, .8, 0);
image_xscale = -sign(knockback_speed);
image_xscale = image_xscale * 3;
move_and_collide(knockback_speed, 0);
		
// add friction, rather than sliding across the screen at a constant pace
var knockback_friction = 0.6;
knockback_speed = approach(knockback_speed, 0, knockback_friction);
if knockback_speed == 0 {
	if animation_end {
		knockback_speed = 0;
		state = next_state;
	}
}