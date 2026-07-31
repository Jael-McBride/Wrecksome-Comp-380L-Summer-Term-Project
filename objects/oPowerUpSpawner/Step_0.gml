function respawnPowerup(instX, instY, powerUp){
	instance_create_layer(instX, instY, "Instances", powerUp)
}

with(oPlayer)
	if (place_meeting(x,y, oPowerUpSpeed)) {
		other.instID = instance_place(x, y, oPowerUpSpeed)
		other.instIDx = other.instID.x
		other.instIDy = other.instID.y
		oPlayer.spd += 15
		instance_destroy(other.instID)
		other.alarm[0] = 2*game_get_speed(gamespeed_fps)
	
	}