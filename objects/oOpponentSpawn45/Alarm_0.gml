with(instBot){
	pathNumber = irandom(3)
	switch pathNumber{
		case 1:
		pathUsed = other.path3
		break;
		
		case 2:
		pathUsed = other.path2
		break;
		
		default:
		pathUsed = other.path1
	
	}
	
}