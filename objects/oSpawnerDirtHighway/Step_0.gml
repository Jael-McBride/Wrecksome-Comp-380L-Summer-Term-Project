//this is probably not the most efficient way to code this. figure a better way later
//experimental path variance


if(!instance_exists(inst)&& alarm[0] == -1){
	alarm[0] = 1.5*game_get_speed(gamespeed_fps)
} else if (instance_exists(inst)){
	instanceX = inst.x
	instanceY = inst.y
}



with(oPlayer)
	if (place_meeting(x,y,oChecked)){
		var inst2 = instance_place(x, y, oChecked)	
		instance_destroy(inst2)
		if (instance_exists(oChecked) == 0){
			instance_create_layer(1232, 1664, "Instances", oFinishLine)
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
		instance_create_layer(1482, 2759, "Instances", oChecked)
		instance_create_layer(1373, 952, "Instances", oChecked)
		instance_create_layer(2723, 917, "Instances", oChecked)
		instance_create_layer(6478, 2397, "Instances", oChecked)
		instance_create_layer(5038, 1167, "Instances", oChecked)
		instance_destroy(oFinishLine)
		
	}
	else if(!layer_get_visible("LoseScreenLayer"))
	{
		global.lap = 1
		update("WinScreenLayer");
		instance_destroy(oFinishLine);
		global.race_started = 0
	}
	}
}
