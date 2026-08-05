//pathing

//bestPos += 0.2

spd += accel
spd = clamp(spd, 0, 11)


pointX = path_get_point_x(pTestTrackPath, bestPos)
pointY = path_get_point_y(pTestTrackPath, bestPos)

if ((distance_to_point(pointX, pointY)) < spd){
	move_towards_point(pointX, pointY, distance_to_point(pointX, pointY))
} else {
	move_towards_point(pointX, pointY, spd)
}

//if (x >= pointX && y >= pointY){
//	bestPos += 0.1
//}

if (bestPos >= 1){
bestPos = 0
}



show_debug_message(bestPos)

image_angle = direction + driftAngle

var smoke = instance_create_layer(x,y,"Instances", oSmokeTest)
with(smoke){
		image_angle = other.image_angle
}

