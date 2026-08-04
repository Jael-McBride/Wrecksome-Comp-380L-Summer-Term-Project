inst = instance_create_layer(608, 1600, "Instances", global.playerCar)
with(inst)
{
	direction = 90
}

inst = instance_create_layer(608, 1600, "Instances", oOpponentParent)

if(instance_exists(oPlayer)){
	layer_set_visible("WIPGameHUD", true);
}else{
	layer_set_visible("WIPGameHUD", false);
}