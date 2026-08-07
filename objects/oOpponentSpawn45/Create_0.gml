var thePaths = getPathofTrack(room_get_name(room))

path1 = thePaths.FirstPath
path2 = thePaths.SecondPath
path3 = thePaths.ThirdPath


pointX = 0
pointY = 0

instanceX = 0
instanceY = 0

//save all stats upon death!
oldLapDone = 0

instBot = instance_create_layer(x, y, "Instances", oOpponentParent)
with(instBot)
{
	direction = -45
	pathUsed = other.path1
}

oldSpriteUsed = instBot.sprite_index
