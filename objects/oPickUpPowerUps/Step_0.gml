

with(oPlayer){
if (place_meeting(x,y,oPowerUpSpeed) && boostGauge < 100){
	other.instIDplayer = id
	other.instID = instance_place(x, y, oPowerUpSpeed)
	pickup(other.instIDplayer, other.instID)
	instance_destroy(other.instID)
}
if (place_meeting(x,y,oRepair)){
	other.instIDplayer = id
	other.instID = instance_place(x, y, oRepair)
	pickup(other.instIDplayer, other.instID)
	instance_destroy(other.instID)
}
if (place_meeting(x,y,oGenericPowerUp) && currentPower = "none"){
	other.instIDplayer = id
	other.instID = instance_place(x, y, oGenericPowerUp)
	pickup(other.instIDplayer, other.instID)
	instance_destroy(other.instID)
}
}