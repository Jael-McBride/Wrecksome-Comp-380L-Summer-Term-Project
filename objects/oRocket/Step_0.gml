if (place_meeting(x,y,oWall)){
	instance_create_layer(x,y,"Instances", oPlosion)
	instance_destroy()
}