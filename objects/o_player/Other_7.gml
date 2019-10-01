/// @description Insert description here

// this ends up coupling code as it relies on the attack state
// and the step relies on this code
// makes it harder to change code later
// they are dependent on each other

// this bit of code will only run when the animation is ending

//this code will only run when the attack state animation is over
if state == "attack"
{
	state = "move";
	image_index = 0;
	// must set image index = 0 every time we change states
	// to make sure our animations stay smooth
}
