function randomizeSprite(){
var theSprite

var randomSprite = irandom(6)

switch(randomSprite){
	case 1:
	theSprite = sF40
	break;
	
	case 2:
	theSprite = sMiata
	break;
	
	case 3:
	theSprite = sCharger
	break;
	
	case 4:
	theSprite = sPinkPhantom
	break;
	
	case 5:
	theSprite = sOshKosh
	break;
	
	case 6:
	theSprite = sVeneno
	break;
	
	default:
	theSprite = sPlaceholderCar
}

return theSprite
}