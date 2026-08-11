speed = 30



if(place_meeting(x,y,[oShield, oMine, oRocket, oTrainKill,oOshKosh])){
	instance_create_layer(x,y,"Instances", oPlosion)
	fadeOutSound(currentSound, 1000)
	instance_destroy()
}

if(place_meeting(x,y,oPlayer) && soundPlay == 0){
	soundPlay = 1
	playIngame(id, TrainHorn, 10, false)
}

if(x > room_width || y > room_height){
	fadeOutSound(currentSound, 1000)
	instance_destroy()
}

//if(distance_to_object(oPlayer) < 20){
//	playIngame(id, TrainHorn, 11, false)
//}

//if(abs(x - room_width) >= 370 || abs(y - room_height) >= 370){
//	instance_destroy()
//}