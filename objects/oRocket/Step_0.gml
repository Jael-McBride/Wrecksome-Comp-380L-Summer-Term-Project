if (place_meeting(x,y,oTestWall)){
	instance_create_layer(x,y,"Instances", oPlosion)
	instance_destroy()
}