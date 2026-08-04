inst = instance_create_layer(2368, 832, "Instances", global.playerCar)

if(instance_exists(oPlayer)){
	layer_set_visible("WIPGameHUD", true);
}else{
	layer_set_visible("WIPGameHUD", false);
}



//if (global.lap < 3){
//		instance_create_layer(4096, 704, "Instances", oChecked)
//		instance_create_layer(3744, 2944, "Instances", oChecked)
//		instance_create_layer(672, 2816, "Instances", oChecked)
//		instance_create_layer(544, 896, "Instances", oChecked)
//}