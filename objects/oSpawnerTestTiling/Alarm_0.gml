var spawnPoint = getClosestPoint(pGrassPath, instanceX, instanceY)

instanceX = path_get_x(pGrassPath, spawnPoint)
instanceY = path_get_y(pGrassPath, spawnPoint)

pointX = path_get_x(pGrassPath, spawnPoint + 0.05)
pointY = path_get_y(pGrassPath, spawnPoint + 0.05)

oldDirection = point_direction(instanceX,instanceY, pointX, pointY)

inst = instance_create_layer(instanceX, instanceY, "Instances", global.playerCar)
with(inst)
{
	direction = other.oldDirection
}