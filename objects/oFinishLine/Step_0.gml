if place_meeting(x, y, oPlayer){
	global.lap+=1
	
	if (global.lap <= 3){
		instance_create_layer(4096, 704, "Instances", oChecked)
		instance_create_layer(3744, 2944, "Instances", oChecked)
		instance_create_layer(672, 2816, "Instances", oChecked)
		instance_create_layer(544, 896, "Instances", oChecked)
		instance_destroy()
		//if (global.lap = 2) {update("SecondLap")
		//	alarm[0] = 1*game_get_speed(gamespeed_fps)
			
		//	}
		//if (global.lap = 3) {update("ThirdLap")
		//	alarm[1] = 1*game_get_speed(gamespeed_fps)
			
		//	}
	}
	else
	{
		global.lap = 1
		update("workDammit");
		instance_destroy();
	}
}