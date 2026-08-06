///@description fallback behavior in case of bugs
if(spd < 1){
	instance_create_layer(x,y, "Instances", oPlosion)
	instance_destroy()
}