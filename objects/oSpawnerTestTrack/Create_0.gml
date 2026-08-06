pointX = 0
pointY = 0


instanceX = 0
instanceY = 0

oldDirection = 0


inst = instance_create_layer(672, 1600, "Instances", global.playerCar)
with(inst)
{
	pathUsed = pTestTrackPath
	direction = 90
}
