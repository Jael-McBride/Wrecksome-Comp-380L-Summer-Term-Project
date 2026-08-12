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
		case sMiata:
			engineIdle = GT40Idle
			engineRising = MiataRising
			engineConstant = MiataConstant
			engineFalling = MiataFalling
			
			break;
		case sFormula1:
			engineIdle = GT40Idle
			engineRising = FormulaRising
			engineConstant = FormulaConstant
			engineFalling = FormulaFalling
			
			break;
			
		case sSupra:
			engineIdle = SupraIdle
			engineRising = SupraRising
			engineConstant = SupraConstant
			engineFalling = SupraFalling
		
			break;
		case sVeneno:
			engineIdle = F40IdleNew
			engineRising = F40Rising
			engineConstant = F40Constant
			engineFalling = F40Falling
		
			break;			
		case sPinkPhantom:
			engineIdle = ChargerIdle
			engineRising = ChargerRisingNew
			engineConstant = ChargerConstant
			engineFalling = ChargerFalling
		
			break;
		
		case sCharger:
			engineIdle = ChargerIdle
			engineRising = ChargerRisingNew
			engineConstant = ChargerConstant
			engineFalling = ChargerFalling
		
			break;
		case sAE86:
			engineIdle = AE86Idle
			engineRising = AE86Rising
			engineConstant = AE86ConstantNew
			engineFalling = AE86Falling
			
			break;
		
		case sF40:
			engineIdle = F40IdleNew
			engineRising = F40Rising
			engineConstant = F40Constant
			engineFalling  = F40Falling
			
			break;
		
		case sGT40:
			engineIdle = GT40Idle
			engineRising = GT40Rising2
			engineConstant = GT40Constant
			engineFalling = GT40Falling
			
			break;
		
		case sOshKosh: 
			engineIdle = TruckIdleNew
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
	//if(audio_sound_get_gain(currentSound) <= 0){
	//	audio_stop_sound(currentSound)
	//}
}