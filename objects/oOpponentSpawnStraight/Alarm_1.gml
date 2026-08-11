///@description Respawn
var bestPos = getClosestPoint(path1, instanceX, instanceY)


var tempx1 = path_get_x(path1, bestPos)
var tempy1 = path_get_y(path1, bestPos)
	
var tempx2 = path_get_x(path2, bestPos)
var tempy2 = path_get_y(path2, bestPos)
	
var tempx3 = path_get_x(path3, bestPos)
var tempy3 = path_get_y(path3, bestPos)
	
if(distance_to_point(tempx1,tempy1) > distance_to_point(tempx2,tempy2)){
	pathSpawned = path2
}
if(distance_to_point(tempx1,tempy1) > distance_to_point(tempx3,tempy3)){
	pathSpawned = path3
}	
	
bestPos = getClosestPoint(pathSpawned, x, y)
pointX = path_get_x(pathSpawned, bestPos)
pointY = path_get_y(pathSpawned, bestPos)

FindRespawn(id,instanceX,instanceY)

instBot = instance_create_layer(instanceX, instanceY, "Instances", theOpponent)
with(instBot)
{
	direction = point_direction(other.instanceX, other.instanceY, other.pointX, other.pointY)
	pathUsed = other.pathSpawned
	lapDone = other.oldLapDone
	sprite_index = other.oldSpriteUsed
	
	path1 = other.path1
	path2 = other.path2
	path3 = other.path3
}
