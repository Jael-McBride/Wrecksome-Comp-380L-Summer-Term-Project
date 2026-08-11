pointX = 0
pointY = 0


instanceX = 0
instanceY = 0

oldDirection = 0


inst = instance_create_layer(2088, 336, "Instances", global.playerCar)
with(inst)
{
	pathUsed = pTestTrackPath
	direction = 0
}

global.currentSong = audio_play_sound(RocketRace, 11, true)
