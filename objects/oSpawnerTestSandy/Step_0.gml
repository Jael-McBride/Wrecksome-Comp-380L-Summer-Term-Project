//this is probably not the most efficient way to code this. figure a better way later
if(!instance_exists(inst)&& alarm[0] == -1){
	alarm[0] = 2*game_get_speed(gamespeed_fps)

}


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
			instance_create_layer(2048, 1248, "Instances", oFinishLine)
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
		instance_create_layer(5408, 864, "Instances", oChecked)
		instance_create_layer(992, 928, "Instances", oChecked)
		instance_create_layer(5024, 3104, "Instances", oChecked)
		instance_create_layer(3488, 1952, "Instances", oChecked)
		instance_create_layer(992, 2624, "Instances", oChecked)
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