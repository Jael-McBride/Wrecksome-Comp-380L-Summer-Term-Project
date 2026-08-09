///@description what
var RNG = random(100)

if(RNG >= RNGcounter){
	fastState = 1
	oldSpeed = boostedSpeed
	if (alarm[9] == -1) {
	alarm[9] = 2.5*game_get_speed(gamespeed_fps)
	}
}