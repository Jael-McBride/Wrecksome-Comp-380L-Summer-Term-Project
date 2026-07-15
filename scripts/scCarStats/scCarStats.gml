//for now, this is a pretty primitive script. The idea here is that once more cars are implemented,
//this script will contain the stats of every car, and the game refers to this list to set the stats
//of each car using a function that checks the name of the car

function setCar(carName){
	
	switch(carName)
	{
	
	case "sportsCar":
	accel = 0.4;
	turnR = 2.5;
	topSpeed = 16;
	brakes = 0.2;
	
	driftR = 1;
	driftRecovery = 2;
	autoRecovery = 2; 
	entryAngle = 8;
	maxAngle = 50; 
	entrySpeed = 3;
	driftSlowdown = 0.3;
	driftMaintain = 4;
	
	break;
		
	default:
	accel = 0.3;
	turnR = 2.5;
	topSpeed = 14;
	brakes = 0.3;
	
	//remember to add drifting attributes. This default case will be used to explain each attribute.
	driftR = 9; //extra turning radius when drifting, if needed
	driftRecovery = 3; //how much control you have over the drift, and the ability to "reset" the car
	autoRecovery = 2; //how much the car straightens out when mashing the gas
	entryAngle = 10; //the initial angle you get when starting a drift
	maxAngle = 63; //the max drifting angle the car can be at
	entrySpeed = 5; //to make the game feel better, a boost of speed is given upon a start of a drift, depending on the car
	driftSlowdown = 2; //how much top speed is affected during a drift. makes sure that drifting is slower than going straight
	driftStart = 4; //minimum speed in which a drift is allowed to happen. set to 99 if you want a car that cant drift
	}
}


