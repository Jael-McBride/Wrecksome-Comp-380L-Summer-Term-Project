inst = instance_create_layer(2400, 800, "Instances", global.playerCar)
with(inst)
{
	direction = 0
}

if(instance_exists(oPlayer)){
	layer_set_visible("WIPGameHUD", true);
}else{
	layer_set_visible("WIPGameHUD", false);
}