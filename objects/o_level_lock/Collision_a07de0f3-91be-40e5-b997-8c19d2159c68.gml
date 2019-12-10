/// @description Insert description here

if object_exists(o_minotaur) and object_exists(o_skeleton) {

} else if !object_exists(o_minotaur) and !object_exists(o_skeleton) {
	instance_destroy(o_level_lock);
}