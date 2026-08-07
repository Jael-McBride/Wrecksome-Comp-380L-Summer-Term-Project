///@description Respawn
var bestPos = getClosestPoint(path1, instanceX, instanceY)
pointX = path_get_x(path1, bestPos)
pointY = path_get_y(path1, bestPos)

instBot = instance_create_layer(instanceX, instanceY, "Instances", oOpponentParent)
with(instBot)
{
	direction = point_direction(other.instanceX, other.instanceY, other.pointX, other.pointY)
	pathUsed = other.path1
	lapDone = other.oldLapDone
	sprite_index = other.oldSpriteUsed
}
