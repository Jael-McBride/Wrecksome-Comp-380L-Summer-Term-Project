var spawnPoint = getClosestPoint(pProposal, instanceX, instanceY)

instanceX = path_get_x(pProposal, spawnPoint)
instanceY = path_get_y(pProposal, spawnPoint)

pointX = path_get_x(pProposal, spawnPoint + 0.05)
pointY = path_get_y(pProposal, spawnPoint + 0.05)

oldDirection = point_direction(instanceX,instanceY, pointX, pointY)

inst = instance_create_layer(instanceX, instanceY, "Instances", global.playerCar)
with(inst)
{
	direction = other.oldDirection
}