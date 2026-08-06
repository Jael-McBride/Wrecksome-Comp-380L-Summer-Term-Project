inst = instance_create_layer(1812, 1120, "Instances", global.playerCar)
with(inst)
{
	direction = -45
}

if(instance_exists(oPlayer)){
	layer_set_visible("WIPGameHUD", true);
}else{
	layer_set_visible("WIPGameHUD", false);
}