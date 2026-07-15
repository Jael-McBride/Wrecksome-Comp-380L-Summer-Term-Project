/// @description Insert description here
// You can write your code in this editor

var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));

var drive = keyboard_check(vk_up) || keyboard_check(ord("W"));
var reverse = keyboard_check(vk_down) || keyboard_check(ord("S"));

//driftR is there to add or subtract from the turn radius upon drifting, if needed

//enable or disable drift angle check for a different drifting experience


if (left == 1 && abs(speed) > 0.05 /*&& driftAngle >= 0*/ ) { direction += (turnR + driftR); } 
if (right == 1 && abs(speed) > 0.05 /*&& driftAngle <= 0*/ ) { direction -= (turnR + driftR); }

if (drive == 1 && speed <= topSpeed && abs(driftAngle) < 1) {
	speed += accel;
	}
if (drive == 1 && speed <= (topSpeed - Slowdown) && abs(driftAngle) > 1) {
	speed += (accel - (/*(Slowdown/10)*/ + 0.1)); //experimenting with natural drift slowdowns
	}

else if (speed > 0) {speed -= 0.1}

image_angle = direction + driftAngle

//tiresmoke

if (speed > 1){
	var smoke = instance_create_layer(x, y, "Instances", oSmokeTest);
}

//ability to start the drift. 
if (speed > driftStart){
	if (right == 1 && reverse == 1 && driftAngle == 0) {
		driftAngle = -entryAngle //entry angle and speed upon entry
		speed += entrySpeed
	}
	if (left == 1 && reverse == 1 && driftAngle == 0) {
		driftAngle = entryAngle
		speed += entrySpeed
	}
} 
//ability to recover and maintain the drift

if (abs(driftAngle) > 3 && speed > 2) {
	if(right == 1 && driftAngle > -maxAngle){
		driftAngle -= driftRecovery
	}
	if(left == 1 && driftAngle < maxAngle){
		driftAngle += driftRecovery
}
Slowdown = driftSlowdown //how much the drift slows down the car
}
else
{
	direction = image_angle
	driftR = 0
	driftAngle = 0
	Slowdown = 0
}

if (drive == 1 && speed < 6 && abs(driftAngle) > 0)
{
	direction = image_angle
	driftR = 0
	driftAngle = 0
	Slowdown = 0
}


if (drive == 1 && right == 0 && left == 0 && driftAngle < 0){
	driftAngle += autoRecovery
}
else if (drive == 1 && right == 0 && left == 0 && driftAngle > 0){
	driftAngle -= autoRecovery
}


//going in reverse
	
if (reverse == 1 && drive == 0 && speed > -4.5) {speed -= brakes}
else if (speed < 0) {speed += 0.1}

//currently set to collide with only the test wall, change this once more walls are added
if (place_meeting(x,y, oTestWall)){
speed = -speed
}

// Prevent leaving the left and right room boundaries
x = clamp(x, 0, room_width);

// Prevent leaving the top and bottom room boundaries
y = clamp(y, 0, room_height);



//powerUps?
if (place_meeting(x,y, oPowerUpSpeed)) {
speed += 15
image_index = 1
alarm[0] = 2*game_get_speed(gamespeed_fps)
}

if (place_meeting(x,y, oSmallPowerUp)) {
image_xscale = 0.5
image_yscale = 0.5
alarm[1] = 5*game_get_speed(gamespeed_fps)
}

