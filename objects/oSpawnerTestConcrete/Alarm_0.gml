var spawnPoint = getClosestPoint(pConcrete, instanceX, instanceY)

instanceX = path_get_x(pConcrete, spawnPoint)
instanceY = path_get_y(pConcrete, spawnPoint)

pointX = path_get_x(pConcrete, spawnPoint + 0.05)
pointY = path_get_y(pConcrete, spawnPoint + 0.05)

oldDirection = point_direction(instanceX,instanceY, pointX, pointY)

inst = instance_create_layer(instanceX, instanceY, "Instances", global.playerCar)
with(inst)
{
	direction = other.oldDirection
}