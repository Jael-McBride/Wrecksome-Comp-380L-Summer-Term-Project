/// @description Insert description here
// You can write your code in this editor


var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));

var drive = keyboard_check(vk_up) || keyboard_check(ord("W"));
var reverse = keyboard_check(vk_down) || keyboard_check(ord("S")) || keyboard_check(vk_space)

//driftR is there to add or subtract from the turn radius upon drifting, if needed

//hspeed = hspd
//vspeed = vspd
speed = spd
var lastdir = direction

var extraR = 0

//crucial mistake, driftR is always active!!!

if (left == 1 && abs(spd) > 0.05 && (driftAngle >= 0 || driftCorrCheck == 1) ) { direction += (turnR + extraR); } 
if (right == 1 && abs(spd) > 0.05 && (driftAngle <= 0 || driftCorrCheck == 1) ) { direction -= (turnR + extraR); }

if (drive == 1 && spd <= topSpeed && abs(driftAngle) < 1) {
	spd += accel;
	}
if (drive == 1 && spd <= (topSpeed - Slowdown) && abs(driftAngle) > 1) {
	spd += (accel - (/*(Slowdown/10)*/ + 0.1)); //experimenting with natural drift slowdowns
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
 */    d
            
if (place_meeting(x + hspd, y, oTestWall)) {
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

//var angle = image_angle

hspd = lengthdir_x(spd, angle);
show_debug_message(extraR)

if (place_meeting(x,y,oTestWall)){
speed = -speed*0.8}


//if(place_meeting(x + hspd, y, oTestWall)) // checking collision for next horizontal possition
//{
//    hspd=0; // since we can't move anymore set to 0
	
//}
//if(place_meeting(x, y + vspd, oTestWall)) // checking collision for next horizontal possition
//{
//    vspd=0; // since we can't move anymore set to 0
	
//}

//move_and_collide(hspd, vspd, oTestWall)


// Prevent leaving the left and right room boundaries
x = clamp(x, 0, room_width);

// Prevent leaving the top and bottom room boundaries
y = clamp(y, 0, room_height);



//powerUps?
if (place_meeting(x,y, oPowerUpSpeed)) {
var powerUp = instance_place(x, y, oPowerUpSpeed)
spd += 15
image_index = 1
alarm[0] = 2*game_get_speed(gamespeed_fps)
instance_destroy(powerUp)
}

if (place_meeting(x,y, oSmallPowerUp)) {
image_xscale = 0.5
image_yscale = 0.5
alarm[1] = 5*game_get_speed(gamespeed_fps)
}

