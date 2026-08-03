
with(oPlayer)
	if (place_meeting(x,y, oOilPickup) && oPlayer.currentPower == "none") {
		other.instID = instance_place(x, y, oOilPickup)
		oPlayer.currentPower = "oil"
		instance_destroy(other.instID)
		other.alarm[0] = 3.5*game_get_speed(gamespeed_fps)
		show_debug_message("oil spill get!")
	}

	