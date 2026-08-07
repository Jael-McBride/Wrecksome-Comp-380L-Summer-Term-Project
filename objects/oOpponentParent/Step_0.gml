//freeze
image_angle = direction + driftAngle
if(!variable_global_exists("race_started") || !global.race_started) exit;

//pathing
show_debug_message(lapDone)

//bestPos += 0.2
if (place_meeting(x,y,oCheckForAI) && checkContact == 0){
	lapDone += 1
	checkContact = 1
	if (alarm[1] == -1){
		alarm[1] = 5*game_get_speed(gamespeed_fps)
	}
} 
if (lapDone > lapNeeded){
	layer_set_visible("lose", true);
	global.race_started = 0
}


if (spd <= oldSpeed){
	spd += accel
} else {
	spd -= accel
}

hspd=lengthdir_x(spd, direction); // extracting horizontal movement
vspd=lengthdir_y(spd, direction); // extracting vertical movement

move_and_collide(hspd, vspd, [oPlayer, oTestWall, oOpponentParent])

if(place_meeting(x-(7+hspd),y,[oOpponentParent,oPlayer,oTestWall])){
	x+=(7+hspd)
	if(contactState == 0 && shieldState == 0){
		carHealth -= 1
		contactState = 1
	}
}
if(place_meeting(x+(7+hspd),y,[oOpponentParent,oPlayer,oTestWall])){
	x-=(7+hspd)
	if(contactState == 0 && shieldState == 0){
		carHealth -= 1
		contactState = 1
	}
}
if(place_meeting(x,y-(7+vspd),[oOpponentParent,oPlayer,oTestWall])){
	y+=(7+vspd)
	if(contactState == 0 && shieldState == 0){
		carHealth -= 1
		contactState = 1
	}
}
if(place_meeting(x,y+(7+vspd),[oOpponentParent,oPlayer,oTestWall])){
	y-=(7+vspd)
	if(contactState == 0 && shieldState == 0){
		carHealth -= 1
		contactState = 1
	}
}

if(!place_meeting(x,y,[oOpponentParent,oPlayer,oTestWall])){
	contactState = 0
}



pointX = path_get_x(pathUsed, bestPos)
pointY = path_get_y(pathUsed, bestPos)


//move_towards_point(pointX, pointY, spd)
if(angle_difference(point_direction(x,y,pointX,pointY), direction) < -10)
	{
		maxSpeed = oldSpeed - 3
		rotate = driftR
		if(abs(driftAngle) < maxDriftAngle){
		driftAngle -= 2
		}
	}
	
else if(angle_difference(point_direction(x,y,pointX,pointY), direction) > 10)
	{
		maxSpeed = oldSpeed - 3
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

if (distance_to_point(pointX,pointY) < 300){
	bestPos += 0.05
} else if (distance_to_point(pointX,pointY) > 1000){
	bestPos = getClosestPoint(pathUsed, x, y)
}

//if (bestPos >= path_get_number(pTestTrackPath)){
//	bestPos = 0
//}



var smoke = instance_create_layer(x,y,"Instances", oSmokeTest)
with(smoke){
		image_angle = other.image_angle
}

// Prevent leaving the left and right room boundaries
x = clamp(x, 0, room_width);

// Prevent leaving the top and bottom room boundaries
y = clamp(y, 0, room_height);


//powerup interactions

if (place_meeting(x,y,oShieldPickup)){
	var shieldID = instance_place(x,y,oShieldPickup)
	instance_destroy(shieldID)
	if(alarm[2]==-1){
	alarm[2] = (0.5 + irandom(6))*game_get_speed(gamespeed_fps)
	}
}

if (place_meeting(x,y,oMinePickup)){
	var mineID = instance_place(x,y,oMinePickup)
	instance_destroy(mineID)
	if(alarm[5]==-1){
	alarm[5] = (0.5 + irandom(6))*game_get_speed(gamespeed_fps)
	}
}


if (place_meeting(x,y,oOilPickup)){
	var oilID = instance_place(x,y,oOilPickup)
	instance_destroy(oilID)
	if(alarm[6]==-1){
	alarm[6] = (0.5 + irandom(6))*game_get_speed(gamespeed_fps)
	}
}

if (place_meeting(x,y, oGunPickup)){
	var gunID = instance_place(x,y,oOilPickup)
	instance_destroy(gunID)
	gun = 3
}

if(gun > 0 && collision_line(x, y, x + hspd, y + vspd, [oOpponentParent, oPlayer], false, false) && gunCooldown == 0){
	var _distanceGun = 150; 
	var _spawn_angleGun = image_angle;
	var _spawn_xGun = x + lengthdir_x(_distanceGun, _spawn_angleGun);
	var _spawn_yGun = y + lengthdir_y(_distanceGun, _spawn_angleGun);
	gun -= 1
	var theRocket = instance_create_layer(_spawn_xGun, _spawn_yGun, "Instances", oRocket)
	with(theRocket){
		image_angle = other.image_angle
		direction = other.image_angle
		speed = other.spd + 20} 
	gunCooldown = 1
	if (alarm[7] == -1){
		alarm[7] = 1*game_get_speed(gamespeed_fps)
	}
}

//getting hit by powerups

if (place_meeting(x,y,oMine) && damageCooldown == 0 && shieldState == 0){
	carHealth -= 30
	damageCooldown = 1
	var mineID = instance_place(x,y,oMine)
	instance_create_layer(x,y,"Instances", oPlosion)
	instance_destroy(mineID)
	if (alarm[0] == -1) {
		alarm[0] = 0.2*game_get_speed(gamespeed_fps)
	}
	
}

if (place_meeting(x,y,oRocket) && damageCooldown == 0 && shieldState == 0){
	carHealth -= 30
	damageCooldown = 1
	var rocketID = instance_place(x,y,oRocket)
	instance_create_layer(x,y,"Instances", oPlosion)
	instance_destroy(rocketID)
	if (alarm[0] == -1) {
		alarm[0] = 0.2*game_get_speed(gamespeed_fps)
	}
	
}

if (place_meeting(x,y,oOilSpill) && shieldState == 0){
	maxSpeed = 0
}

if (carHealth <= 0){
	instance_create_layer(x,y, "Instances", oPlosion)
	instance_destroy()
}

if(spd < 1 && alarm[3] == -1){
	alarm[3] = 15*game_get_speed(gamespeed_fps)
}


if (alarm[8] == -1){
	alarm[8] = (6 + irandom(7))*game_get_speed(gamespeed_fps)
}

//the afterImage

if (fastState == 1){
	var afterImageBoost = instance_create_layer(x, y, "Instances", oAfterImage)
	with(afterImageBoost){
		sprite_index = other.sprite_index
		image_angle = other.image_angle
	}
}