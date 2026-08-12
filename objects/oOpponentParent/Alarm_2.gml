///@description shield usage
	var shieldBot = instance_create_layer(x, y, "PowerUpEffects", oShield)
	with(shieldBot){
		followInstance = other.id
	}
	shieldState = 1
	if (alarm[4] == -1){
	alarm[4] = 6*game_get_speed(gamespeed_fps)
	}