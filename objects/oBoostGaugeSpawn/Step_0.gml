
with(oPlayer)
	if (place_meeting(x,y, oPowerUpSpeed) && oPlayer.boostGauge < 100) {
		other.instID = instance_place(x, y, oPowerUpSpeed)
		oPlayer.boostGauge += 25
		oPlayer.boostGauge = clamp(oPlayer.boostGauge, 0, 100)
		instance_destroy(other.instID)
		other.alarm[0] = 3.5*game_get_speed(gamespeed_fps)
		show_debug_message(oPlayer.boostGauge)
	}