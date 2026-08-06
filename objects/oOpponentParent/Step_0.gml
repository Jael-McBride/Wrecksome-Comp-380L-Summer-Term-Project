//pathing

//bestPos += 0.2
if (place_meeting(x,y,oCheckForAI) && checkContact == 0){
	lapDone += 1
	checkContact = 1
	if (alarm[1] == -1){
		alarm[1] = 3.5*game_get_speed(gamespeed_fps)
	}
} 
if (lapDone > lapNeeded){
	layer_set_visible("lose", true);
	instance_deactivate_layer("Instances")
}


if (spd <= maxSpeed){
	spd += accel
} else {
	spd -= accel
}

hspd=lengthdir_x(spd, direction); // extracting horizontal movement
vspd=lengthdir_y(spd, direction); // extracting vertical movement

move_and_collide(hspd, vspd, [oPlayer, oTestWall, oOpponentParent])

if(place_meeting(x-3,y,[oOpponentParent,oPlayer])){
	x+=3
}
if(place_meeting(x+3,y,[oOpponentParent,oPlayer])){
	x-=3	
}
if(place_meeting(x,y-3,[oOpponentParent,oPlayer])){
	y+=3
}
if(place_meeting(x,y+3,[oOpponentParent,oPlayer])){
	y-=3
}



pointX = path_get_x(pathUsed, bestPos)
pointY = path_get_y(pathUsed, bestPos)


//move_towards_point(pointX, pointY, spd)
if(angle_difference(point_direction(x,y,pointX,pointY), direction) < -10)
	{
		maxSpeed = 9
		rotate = driftR
		if(abs(driftAngle) < maxDriftAngle){
		driftAngle -= 2
		}
	}
	
else if(angle_difference(point_direction(x,y,pointX,pointY), direction) > 10)
	{
		maxSpeed = 9
		rotate = driftR
		if(abs(driftAngle) < maxDriftAngle){
		driftAngle += 2
		}
	} 
else {
		maxSpeed = oldSpeed
		rotate = regularR
		direction = image_angle
		driftAngle = 0
	}

if(angle_difference(point_direction(x,y,pointX,pointY), direction) < 0 )
	{
		direction -= rotate
	} 
	
if(angle_difference(point_direction(x,y,pointX,pointY), direction) > 0)
	{
		direction += rotate
	} 
	

if (bestPos >= 1){
	bestPos = 0
}

if (distance_to_point(pointX,pointY) < 80){
	bestPos += 0.05
} else if (distance_to_point(pointX,pointY) > 500){
	bestPos = getClosestPoint(pathUsed, x, y)
}

//if (bestPos >= path_get_number(pTestTrackPath)){
//	bestPos = 0
//}



image_angle = direction + driftAngle

var smoke = instance_create_layer(x,y,"Instances", oSmokeTest)
with(smoke){
		image_angle = other.image_angle
}

// Prevent leaving the left and right room boundaries
x = clamp(x, 0, room_width);

// Prevent leaving the top and bottom room boundaries
y = clamp(y, 0, room_height);

if (place_meeting(x,y,oMine) && damageCooldown == 0){
	carHealth -= 30
	damageCooldown = 1
	var mineID = instance_place(x,y,oMine)
	instance_create_layer(x,y,"Instances", oPlosion)
	instance_destroy(mineID)
	if (alarm[0] == -1) {
		alarm[0] = 0.2*game_get_speed(gamespeed_fps)
	}
	
}

if (place_meeting(x,y,oRocket) && damageCooldown == 0){
	carHealth -= 30
	damageCooldown = 1
	var rocketID = instance_place(x,y,oRocket)
	instance_create_layer(x,y,"Instances", oPlosion)
	instance_destroy(rocketID)
	if (alarm[0] == -1) {
		alarm[0] = 0.2*game_get_speed(gamespeed_fps)
	}
	
}

if (carHealth <= 0){
	instance_create_layer(x,y, "Instances", oPlosion)
	instance_destroy()
}

show_debug_message(lapDone)