KillTrain = instance_create_layer(x,y,"Environmental",oCivMoveInteract)
with(KillTrain){
	image_angle = other.SpawnDirection
	direction = other.SpawnDirection
	spd = 10

}