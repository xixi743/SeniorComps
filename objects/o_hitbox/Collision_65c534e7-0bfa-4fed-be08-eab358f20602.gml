/// @description colliding with skeleton

if creator = noone or creator == other or ds_list_find_index(hit_objects, other) != -1 {
	exit;	
}
// this makes it so the object will not longer kill itself
// by hitting its own hitbox

other.hp -= damage;
// deal damage to the other object

ds_list_add(hit_objects, other);

show_debug_message(other.hp);
show_debug_message(hit_objects);