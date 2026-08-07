pointX = 0
pointY = 0


instanceX = 0
instanceY = 0

oldDirection = 0


inst = instance_create_layer(1812, 1120, "Instances", global.playerCar)
with(inst)
{
	pathUsed = pSandPath
	direction = -45
}
