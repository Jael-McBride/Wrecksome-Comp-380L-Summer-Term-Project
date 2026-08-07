function randomizeSprite(){
var theSprite

var randomSprite = irandom(10)

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
	
	case 7:
	theSprite = sAE86
	break;
	
	case 8:
	theSprite = sHummer
	break;
	
	case 9:
	theSprite = sSupra
	break;
	
	case 10:
	theSprite = sSilverado
	break;
	
	default:
	theSprite = sGT40
}

return theSprite
}