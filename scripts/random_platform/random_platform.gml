var ran_platform = irandom_range(0,4);

switch (ran_platform) {
	case 0:
		place_platform16();
		break;
	case 1:
		place_platform48();
		break;
	case 2:
		place_platform80();
		break;
	case 3:
		place_platform160();
		break;
	case 4:
		place_platform320();
		break;
}