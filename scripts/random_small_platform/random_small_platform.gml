var ran_platform = irandom_range(0,1);

switch (ran_platform) {
	case 0:
		place_platform16();
		break;
	case 1:
		place_platform48();
		break;
}