///@description delay engine falling noise
if(drive == 0){
fadeOutSound(currentEngineSound, 500)
currentEngineSound = audio_play_sound(engineFalling, 10, false)
engineState = 3
}

