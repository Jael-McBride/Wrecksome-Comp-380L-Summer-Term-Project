/// @description Insert description here
// You can write your code in this editor


layer_name = "workDammit"

layer_set_visible(layer_name, false);

layer_name = "Pause"

layer_set_visible(layer_name, false);

if(instance_exists(oPlayer)){
	layer_set_visible("WIPGameHUD", true);
}else{
	layer_set_visible("WIPGameHUD", false);
}