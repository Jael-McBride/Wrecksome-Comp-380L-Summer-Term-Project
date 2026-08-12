var right = keyboard_check(vk_right) || keyboard_check(ord("D"))
var left = keyboard_check(vk_left) || keyboard_check(ord("A"))
var up = keyboard_check(vk_up) || keyboard_check(ord("W"))
var down = keyboard_check(vk_down) || keyboard_check(ord("S")) || keyboard_check(vk_space)

var xinput = right-left
var yinput = down-up


var angle = image_angle - driftAngle

if ((yinput == -1) && spd < (topSpeed - Slowdown)){
spd += accel
} else if (spd > 0){
spd -= 0.1
}


if ((yinput == 1) && spd > -4.5){
spd -= -0.2
} else if (spd < 0){
spd += 0.1
}

//drifting and turning HERE

extraR = 0

if(xinput == 1){
	image_angle += (-(turnR + extraR)*xinput)
}
if(xinput == -1){
	image_angle += (-(turnR + extraR)*xinput)
}

//WARNING WARNING WARNING USING DIFFERENT SMOKE TEST

if (spd > 1){
	var smoke = instance_create_layer(x, y, "Instances", oSmokeTest_1);
}

//ability to start the drift. 
if (spd > driftStart){
	if (xinput == 1 && yinput == 1 && driftAngle == 0) {
		driftAngle = -entryAngle //entry angle and speed upon entry
		extraR = driftR
		
	}
	if (xinput == -1 && yinput == 1 && driftAngle == 0) {
		driftAngle = entryAngle
		extraR = driftR
	}
} 
//ability to recover and maintain the drift

if (abs(driftAngle) > 3 && spd > 2) {
	if(xinput == 1 && driftAngle > -maxAngle){
		driftAngle -= driftRecovery
	}
	if(xinput == -1 && driftAngle < maxAngle){
		driftAngle += driftRecovery
}
Slowdown = driftSlowdown //how much the drift slows down the car
}
else
{
	extraR = 0
	driftAngle = 0
	Slowdown = 0
}

if (yinput == -1 && xinput == 0 && driftAngle < 0){
	driftAngle += autoRecovery
}
else if (yinput == -1 && xinput == 0 && driftAngle > 0){
	driftAngle -= autoRecovery
}


hspd=lengthdir_x(spd, angle); // extracting horizontal movement
vspd=lengthdir_y(spd, angle); // extracting vertical movement

//show_debug_message(hspd)
//show_debug_message(vspd)
show_debug_message(speed)

var prev_angle = image_angle; // save current angle

/*
if(place_meeting(x + hspd, y, oTestWall)) // check if we are colliding now
{
	hspd = vspd
	
  // image_angle+= sign(prev_angle - angle)*2; // turn back by 1 degree in direction of previous angle
}
if(place_meeting(x, y + vspd, oTestWall)) // check if we are colliding now
{
	hspd = vspd
	
  // image_angle+= sign(prev_angle - angle)*2; // turn back by 1 degree in direction of previous angle
}
*/

move_and_collide(hspd, vspd, oTestWall)