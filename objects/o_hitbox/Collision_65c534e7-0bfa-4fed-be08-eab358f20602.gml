/// @description colliding with lifeforms

// could put screenshake here, but it would prevent customizablility for enemies

if creator = noone or creator == other or ds_list_find_index(hit_objects, other) != -1 {
	exit;	
}
// this makes it so the object will not longer kill itself
// by hitting its own hitbox

other.hp -= damage;
// deal damage to the other object

ds_list_add(hit_objects, other);

show_debug_message(other.hp);

other.state = "knockback";
other.knockback_speed = knockback * image_xscale;