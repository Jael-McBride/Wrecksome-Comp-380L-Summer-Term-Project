function playIngame(objectID,soundAsset,priority,loop){
	var _vx = camera_get_view_x(view_camera[0]) + 800
	var _vy = camera_get_view_y(view_camera[0]) + 450
	
	var _dx = objectID.x
	var _dy = objectID.y
	
	var soundDistance = 200/point_distance(_vx,_vy,_dx,_dy)
	soundDistance = clamp(soundDistance, 0, 1)
	if (soundDistance > 1){
		soundDistance = 1
	}
	
	currentSound = audio_play_sound(soundAsset, priority, loop, soundDistance)
	audio_sound_gain(currentSound,soundDistance,0)
	
	if(!instance_exists(objectID)){
		audio_stop_sound(currentSound)
	}
}

function getCarSounds(instanceID){
	
	//wip. place car sounds here
	
	var spriteOfCar = instanceID
	
	switch(spriteOfCar){
		
		case sOshKosh: 
			engineIdle = TruckIdleGeneric
			engineRising = TruckDriveSteady
			engineConstant = truckDriveConstant
			engineFalling = truckDriveFalling
			
		break;
		
		default:
			engineIdle = EngineIdleGeneric
			engineRising = BadEngineRising
			engineConstant = BadEngineConstantFix
			engineFalling = BadEngineFallingNewShort
		break;
	}
}

function fadeOutSound(currentSound, ms){
	audio_sound_gain(currentSound, 0, ms)
	if(audio_sound_get_gain(currentSound) <= 0){
		audio_stop_sound(currentSound)
	}
}