///@description delay engine falling noise
if(drive == 0){
fadeOutSound(currentEngineSound, 2000)
currentEngineSound = audio_play_sound(engineFalling, 10, false)
engineState = 3
}