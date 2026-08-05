//this is probably not the most efficient way to code this. figure a better way later
//experimental path variance
if(instance_exists(instBot) && alarm[1] == -1){
	alarm[1] = (irandom(4)+1)*game_get_speed(gamespeed_fps)
}



if(!instance_exists(inst)&& alarm[0] == -1){
	alarm[0] = 2*game_get_speed(gamespeed_fps)

}

with(oPlayer)
	if (place_meeting(x,y,oChecked)){
		var inst2 = instance_place(x, y, oChecked)	
		instance_destroy(inst2)
		if (instance_exists(oChecked) == 0){
			instance_create_layer(608, 1600, "Instances", oFinishLine)
		}

	}
//if (instance_exists(oChecked) == 0){
//	instance_create_layer(2519, 819, "Instances", oFinishLine)
//	global.checkP = 0
//}

with(oPlayer) {
	if place_meeting(x, y, oFinishLine){
	global.lap+=1
	
	if (global.lap <= 3){
		instance_create_layer(640, 576, "Instances", oChecked)
		instance_create_layer(2464, 576, "Instances", oChecked)
		instance_create_layer(640, 2400, "Instances", oChecked)
		instance_create_layer(2464, 2400, "Instances", oChecked)
		instance_destroy(oFinishLine)
		
	}
	else
	{
		global.lap = 1
		update("workDammit");
		instance_destroy(oFinishLine);
		deactivateAllOpponents()
	}
	}
}
