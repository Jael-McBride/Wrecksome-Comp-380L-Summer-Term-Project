inst = instance_create_layer(672, 1600, "Instances", global.playerCar)
with(inst)
{
	direction = 90
}

instBot = instance_create_layer(608, 1600, "Instances", oOpponentParent)
with(instBot)
{
	direction = 90
	pathUsed = pTestTrackPath
}
