//this is probably not the most efficient way to code this. figure a better way later

with(oPlayer)
	if (place_meeting(x,y,oChecked)){
		var inst = instance_place(x, y, oChecked)	
		instance_destroy(inst)
		if (instance_exists(oChecked) == 0){
			instance_create_layer(1824, 800, "Instances", oFinishLine)
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
		instance_create_layer(4224, 800, "Instances", oChecked)
		instance_create_layer(4352, 2624, "Instances", oChecked)
		instance_create_layer(2528, 3104, "Instances", oChecked)
		instance_create_layer(1824, 1920, "Instances", oChecked)
		instance_create_layer(608, 864, "Instances", oChecked)
		instance_destroy(oFinishLine)
		
	}
	else
	{
		global.lap = 1
		update("workDammit");
		instance_destroy(oFinishLine);
	}
	}
}