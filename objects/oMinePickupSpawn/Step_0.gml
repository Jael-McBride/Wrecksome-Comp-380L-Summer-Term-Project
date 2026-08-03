if(!instance_exists(instID) && alarm[0] == -1){
	alarm[0] = 4.5*game_get_speed(gamespeed_fps)
}


//probably no longer needed. will keep for possible future reference
//with(oPlayer)
//	if (place_meeting(x,y, instID) && oPlayer.boostGauge < 100) {
//		oPlayer.boostGauge += 25
//		oPlayer.boostGauge = clamp(oPlayer.boostGauge, 0, 100)
//		instance_destroy(other.instID)
//		other.alarm[0] = 3.5*game_get_speed(gamespeed_fps)
//		show_debug_message(oPlayer.boostGauge)
//	}