/// @description Insert description here
// You can write your code in this editor

var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));

var drive = keyboard_check(vk_up) || keyboard_check(ord("W"));
var reverse = keyboard_check(vk_down) || keyboard_check(ord("S")) || keyboard_check(vk_space)

//driftR is there to add or subtract from the turn radius upon drifting, if needed

//hspeed = hspd
//vspeed = vspd
var extraR = 0


speed = spd
var lastdir = direction



if (left == 1 && abs(spd) > 0.05 && (driftAngle >= 0 || driftCorrCheck == 1) ) { direction += (turnR + extraR); } 
if (right == 1 && abs(spd) > 0.05 && (driftAngle <= 0 || driftCorrCheck == 1) ) { direction -= (turnR + extraR); }

if (drive == 1 && spd <= realSpeed && abs(driftAngle) < 1) {
	spd += realAccel;
	}
if (drive == 1 && spd <= (realSpeed - Slowdown) && abs(driftAngle) > 1) {
	spd += (realAccel - (/*(Slowdown/10)*/ + 0.1)); //experimenting with natural drift slowdowns
	}

else if (spd > 0) {spd -= 0.1}

image_angle = direction + driftAngle

//tiresmoke

if (spd > 1){
	var smoke = instance_create_layer(x, y, "Instances", oSmokeTest);
}

//ability to start the drift. 
if (spd > driftStart){
	if (right == 1 && reverse == 1 && driftAngle == 0) {
		driftAngle = -entryAngle //entry angle and speed upon entry
		spd += entrySpeed
	}
	if (left == 1 && reverse == 1 && driftAngle == 0) {
		driftAngle = entryAngle
		spd += entrySpeed
	}
} 
//ability to recover and maintain the drift

if (abs(driftAngle) > 3 && spd > 2) {
	extraR = driftR
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
	extraR = 0
	driftAngle = 0
	Slowdown = 0
}

if (drive == 1 && spd < 4 && abs(driftAngle) > 0)
{
	direction = image_angle
	extraR = 0
	driftAngle = 0
	Slowdown = 0
}


if (drive == 1 && right == 0 && left == 0 && driftAngle < 0){
	driftAngle += autoRecovery
}
else if (drive == 1 && right == 0 && left == 0 && driftAngle > 0){
	driftAngle -= autoRecovery
}

angle = image_angle - driftAngle

//going in reverse
	
if (reverse == 1 && drive == 0 && spd > -4.5) {spd -= brakes}
else if (spd < 0) {spd += 0.1}

//currently set to collide with only the test wall, change this once more walls are added

/*
 * 1. x += sign(hspd) and y += sign(vspd): moves one pixel in the direction you're moving without caring about magnitude
 * 2. if (place_meeting(x + sign(hspd), y, oTestWall)) break: look one pixel ahead of player direction. If that pixel is 
 *    inside the wall, you're flushed against it; break.                
 */
 hspd = lengthdir_x(spd, angle);
 vspd = lengthdir_y(spd, angle);
            
if (place_meeting(x + hspd, y, oTestWall)) {
	show_debug_message("crash")
    for (var _s = 0; _s < abs(hspd) + 1; _s++) {
        if (place_meeting(x + sign(hspd), y, oTestWall)) break;
        x += sign(hspd);
    }
    hspd = 0;
    spd *= 0.5;
}

if (place_meeting(x, y + vspd, oTestWall)) {
    for (var _s = 0; _s < abs(vspd) + 1; _s++) {
        if (place_meeting(x, y + sign(vspd), oTestWall)) break;
        y += sign(vspd);
    }
    vspd = 0;
    spd *= 0.5;
}


if (place_meeting(x,y,oTestWall)){
speed = -speed*0.8}



// Prevent leaving the left and right room boundaries
x = clamp(x, 0, room_width);

// Prevent leaving the top and bottom room boundaries
y = clamp(y, 0, room_height);


//boost gauge implementation
var boost =  keyboard_check(vk_lshift) || keyboard_check(vk_rshift)
var extraBoost = keyboard_check_pressed(vk_lcontrol) || keyboard_check_pressed(vk_rcontrol)

if (boost == 1 && boostGauge > 0) {
	realSpeed = topSpeed + boostTopSpeed
	realAccel = accel + boostAccel
	boostGauge -= boostUsage
	boostGauge = clamp(boostGauge, 0, 100)
		
	var afterImageBoost = instance_create_layer(x, y, "Instances", oAfterImage)
	with(afterImageBoost){
		sprite_index = other.sprite_index
		image_angle = other.image_angle
	}
		
	show_debug_message(boostGauge)
} else {
	realSpeed = topSpeed
	realAccel = accel
}

//extra boost implementation. Just an idea I thought up of

if (extraBoost == 1 && boostGauge >= 20 && extraBoostInterval == 1){
	fastState = 1
	spd += extraBoostSpeed
	direction = image_angle
	extraR = 0
	driftAngle = 0
	Slowdown = 0
	boostGauge -= 20
	show_debug_message(boostGauge)
	extraBoostInterval = 0
	alarm[0] = 2.5*game_get_speed(gamespeed_fps)
}

if (fastState == 1){
	var afterImageBoost = instance_create_layer(x, y, "Instances", oAfterImage)
	with(afterImageBoost){
		sprite_index = other.sprite_index
		image_angle = other.image_angle
	}
		
	if (alarm[2] == -1) {
	alarm[2] = 1.5*game_get_speed(gamespeed_fps)
	}
}


//gain boost through drifting
if (abs(driftAngle) > 3 && boost == 0 && extraBoost == 0){
	boostGauge += 0.1
	boostGauge = clamp(boostGauge, 0, 100)
	show_debug_message(boostGauge)
} 

//power ups WIP
var usePower = keyboard_check_pressed(ord("E"))

//the big Switch Statement for powers

if (usePower) {
	
	switch(currentPower)
	{
	case "shield":
	var shield = instance_create_layer(x, y, "PowerUpEffects", oShield)
	currentPower = "none"
	break;
	
	case "oil":

	var _distance = 150; 
	var _spawn_angle = image_angle - 180;
	var _spawn_x = x + lengthdir_x(_distance, _spawn_angle);
	var _spawn_y = y + lengthdir_y(_distance, _spawn_angle);

	instance_create_layer(_spawn_x, _spawn_y, "Instances", oOilSpill);
	currentPower = "none"
	break;
	
	default:
	show_debug_message("you aint got nothin, fool!");
	break;
	}
}

//interacting with oil spills
if (turnR > 1) {
	oldTurnR = turnR
}

if (place_meeting(x,y,oOilSpill)){
	turnR = 0.2
	if (alarm[3] == -1){
		alarm[3] = 1.8*game_get_speed(gamespeed_fps)
	}
	
}



//legacy code for abandoned power up. I'll leave it be in case anyone still wanted to use said power up

if (place_meeting(x,y, oSmallPowerUp)) {
image_xscale = 0.5
image_yscale = 0.5
alarm[1] = 5*game_get_speed(gamespeed_fps)
}

