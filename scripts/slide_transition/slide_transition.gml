/// @desc slide_transition(mode,targetroom)
/// @arg Mode sets transition mode between next, restart, and goto
/// @arg Target sets target room when using the goto mode

with (o_transition)
{
	mode = argument[0]; //using square brackets allows us to use optional arguments
	if (argument_count > 1) {
		target = argument[1];
	}
}