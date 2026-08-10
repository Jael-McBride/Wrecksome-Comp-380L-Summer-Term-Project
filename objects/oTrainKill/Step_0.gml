speed = 40

if(place_meeting(x,y,[oShield, oMine, oRocket, oTrainKill])){
	instance_create_layer(x,y,"Instances", oPlosion)
	instance_destroy()
}

if(x > room_width || y > room_height){
	instance_destroy()
}

//if(abs(x - room_width) >= 370 || abs(y - room_height) >= 370){
//	instance_destroy()
//}