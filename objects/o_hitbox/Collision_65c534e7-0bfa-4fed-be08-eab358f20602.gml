/// @description colliding with skeleton

if creator = noone or creator == other {
	exit;	
}
// this makes it so the object will not longer kill itself
// by hitting its own hitbox

instance_destroy(other);