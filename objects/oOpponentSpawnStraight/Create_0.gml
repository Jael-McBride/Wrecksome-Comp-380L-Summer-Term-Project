var thePaths = getPathofTrack(room_get_name(room))

path1 = thePaths.FirstPath
path2 = thePaths.SecondPath
path3 = thePaths.ThirdPath


pointX = 0
pointY = 0

instanceX = 0
instanceY = 0

theOpponent = 0
if (global.hard == 1){
	theOpponent = oOpponentHard
} else {
	theOpponent = oOpponentParent
}

//save all stats upon death!
oldLapDone = 0

instBot = instance_create_layer(x, y, "Instances", theOpponent)
with(instBot)
{
	direction = 0
	pathUsed = other.path1
	
	path1 = other.path1
	path2 = other.path2
	path3 = other.path3
}

oldSpriteUsed = instBot.sprite_index

pathSpawned = 0

