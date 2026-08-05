//pathing

//bestPos += 0.2

if (speed <= maxSpeed){
	speed += accel
}


pointX = path_get_x(pTestTrackPath, bestPos)
pointY = path_get_y(pTestTrackPath, bestPos)

//move_towards_point(pointX, pointY, spd)

if(direction > point_direction(x,y,pointX,pointY) || point_direction(x,y,pointX,pointY) - direction > 300)
	{
		direction -= 5
		//if(driftAngle > -50){
		//driftAngle -= 2
		//}
	} 

if(direction < point_direction(x,y,pointX,pointY) /*&& (abs(point_direction(x,y,pointX,pointY) - direction) < 300)*/)
	{
		if((point_direction(x,y,pointX,pointY) - direction) > 335){
			direction -= 5
			//if(driftAngle > -50){
			//driftAngle -= 3
			//}
		}else
		direction += 5
		//if(driftAngle < 50){
		//driftAngle += 3
		//}
	} 

//if(driftAngle < 0 && (abs(point_direction(x,y,pointX,pointY) - direction) < 10 ||abs(point_direction(x,y,pointX,pointY) - direction) > 350))
//{driftAngle += 1}
//if(driftAngle > 0 && (abs(point_direction(x,y,pointX,pointY) - direction) < 10 ||abs(point_direction(x,y,pointX,pointY) - direction) > 350))
//{driftAngle -= 1}
//if((direction - point_direction(x,y,pointX,pointY)) < -10){
//	driftAngle -= 3
//	clamp(driftAngle, 0, 50)
//}
//if((direction - point_direction(x,y,pointX,pointY)) > 10){
//	driftAngle += 3
//	clamp(driftAngle, 0, 50)
//} 

//if(abs(direction - point_direction(x,y,pointX,pointY)) <= 10){
//	driftAngle = 0

//} 




if (bestPos >= 1){
	bestPos = 0
}

if (distance_to_point(pointX,pointY) < 20){
	bestPos += 0.05
} else if (distance_to_point(pointX,pointY) > 600){
	bestPos = getClosestPoint(pTestTrackPath, x, y)
}

//if (bestPos >= path_get_number(pTestTrackPath)){
//	bestPos = 0
//}



show_debug_message(point_direction(x,y,pointX,pointY) - direction)

image_angle = direction + driftAngle

var smoke = instance_create_layer(x,y,"Instances", oSmokeTest)
with(smoke){
		image_angle = other.image_angle
}

// Prevent leaving the left and right room boundaries
x = clamp(x, 0, room_width);

// Prevent leaving the top and bottom room boundaries
y = clamp(y, 0, room_height);

if (place_meeting(x,y,oMine)){
	instance_create_layer(x,y, "Instances", oPlosion)
	instance_destroy()
}

if (place_meeting(x,y,oRocket)){
	instance_create_layer(x,y, "Instances", oPlosion)
	instance_destroy()
}
