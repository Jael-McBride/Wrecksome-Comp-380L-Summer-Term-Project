if(drive == 0){
	fadeOutSound(currentEngineSound, 500)
	currentEngineSound = audio_play_sound(engineIdle, 10, true)
	audio_sound_gain(currentEngineSound, 0.2, 0)
	audio_sound_gain(currentEngineSound, 1, 500)
	engineState = 0
	}