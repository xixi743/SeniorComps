var ran_pattern = irandom_range(0,4);

switch (ran_pattern) {
	case 0:
		stairs_pattern(irandom_range(1,5));
		break;
	case 1:
		stairs_down_pattern(irandom_range(1,5));
		break;
	case 2:
		stairs_up_pattern(irandom_range(1,5));
		break;
	case 3:
		zig_zag_pattern(irandom_range(1,5));
		break;
	case 4:
		flat_jumping_pattern(irandom_range(1,5));
		break;
	case 5:
		doubled_pattern(irandom_range(1,5));
		break;
}