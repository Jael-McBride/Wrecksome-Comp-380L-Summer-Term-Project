//for now, this is a pretty primitive script. The idea here is that once more cars are implemented,
//this script will contain the stats of every car, and the game refers to this list to set the stats
//of each car using a function that checks the name of the car

//REMEMBER TO ADD BREAK

function setCar(carName){
	
	switch(carName)
	{
	
	case "sportsCar":
	accel = 0.3;
	turnR = 2.5;
	topSpeed = 15;
	brakes = 0.2;
	
	driftCorrCheck = 1
	driftR = 10;
	driftRecovery = 2;
	autoRecovery = 1.5; 
	entryAngle = 10;
	maxAngle = 60; 
	entrySpeed = 2;
	driftSlowdown = 3.5;
	driftStart = 12;
	
	break;
	
	case "miata":
	accel = 0.4;
	turnR = 3;
	topSpeed = 12;
	brakes = 0.3;
	
	driftCorrCheck = 0
	driftR = 12;
	driftRecovery = 4;
	autoRecovery = 4; 
	entryAngle = 4;
	maxAngle = 60; 
	entrySpeed = 5;
	driftSlowdown = -2;
	driftStart = 5;
	
	break;
	
	case "oshKosh":
	accel = 0.15;
	turnR = 1.5;
	topSpeed = 14;
	brakes = 0.2;
	
	driftCorrCheck = 0
	driftR = 0;
	driftRecovery = 1.5;
	autoRecovery = 0.7; 
	entryAngle = 4;
	maxAngle = 50; 
	entrySpeed = -1;
	driftSlowdown = 2.5;
	driftStart = 8;
	
	break;
	
	case "barbie":
	accel = 0.4;
	turnR = 3;
	topSpeed = 12;
	brakes = 0.3;
	
	driftCorrCheck = 0
	driftR = 12;
	driftRecovery = 4;
	autoRecovery = 2; 
	entryAngle = 4;
	maxAngle = 60; 
	entrySpeed = 5;
	driftSlowdown = -2;
	driftStart = 5;
	
	break;
	
	case "veneno":
	accel = 0.3;
	turnR = 2;
	topSpeed = 17;
	brakes = 0.2;
	
	driftCorrCheck = 1
	driftR = 4;
	driftRecovery = 2;
	autoRecovery = 1.5; 
	entryAngle = 10;
	maxAngle = 50; 
	entrySpeed = 2;
	driftSlowdown = 3;
	driftStart = 12;
	
	break;
	
	case "charger":
	accel = 0.4;
	turnR = 2;
	topSpeed = 15;
	brakes = 0.2;
	
	driftCorrCheck = 0
	driftR = 12;
	driftRecovery = 3;
	autoRecovery = 1; 
	entryAngle = 12;
	maxAngle = 45; 
	entrySpeed = 4;
	driftSlowdown = 2;
	driftStart = 8;
	
	break;
		
	default:
	accel = 0.3;
	turnR = 2.5;
	topSpeed = 12;
	brakes = 0.3;
	
	//remember to add drifting attributes. This default case will be used to explain each attribute.
	driftCorrCheck = 1 //Boolean value. 0 or 1. Controls whether you need to fully straighten out before trying to swing into another direction. Hard to explain. Just set to 1 for more responsive cars and 0 for heavier cars.
	driftR = 9; //extra turning radius when drifting, if needed
	driftRecovery = 3; //how much control you have over the drift, and the ability to "reset" the car
	autoRecovery = 1.5; //how much the car straightens out when mashing the gas
	entryAngle = 12; //the initial angle you get when starting a drift. Set above 3
	maxAngle = 63; //the max drifting angle the car can be at
	entrySpeed = 5; //to make the game feel better, a boost of speed is given upon a start of a drift, depending on the car
	driftSlowdown = 0; //how much top speed is affected during a drift. makes sure that drifting is slower than going straight
	driftStart = 4; //minimum speed in which a drift is allowed to happen. set to 99 if you want a car that cant drift
	}
}


