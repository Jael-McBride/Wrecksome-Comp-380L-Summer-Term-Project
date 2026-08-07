if(instance_exists(instBot) && alarm[0] == -1){
	alarm[0] = (irandom(4)+1)*game_get_speed(gamespeed_fps)
}

if(!instance_exists(instBot) && alarm[1] == -1){
	alarm[1] = 1.5*game_get_speed(gamespeed_fps)
} else if (instance_exists(instBot)){
	instanceX = instBot.x
	instanceY = instBot.y
	oldLapDone = instBot.lapDone
}

