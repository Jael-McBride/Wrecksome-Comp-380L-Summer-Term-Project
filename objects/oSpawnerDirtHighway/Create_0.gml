pointX = 0
pointY = 0


instanceX = 0
instanceY = 0

oldDirection = 0


inst = instance_create_layer(1435, 2089, "Instances", global.playerCar)
with(inst)
{
	pathUsed = pDirtHigh
	direction = 90
}
