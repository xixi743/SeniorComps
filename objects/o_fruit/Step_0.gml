/// @description Insert description here

//gravity
if !place_meeting(x, y+1, o_solid) {
	vspeed_ += gravity_;
}	
y += vspeed_;

