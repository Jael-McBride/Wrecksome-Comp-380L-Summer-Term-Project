if(layer_get_visible("TutorialLayer")){
	layer_set_visible("TutorialLayer", false);
	layer_set_visible("MenuLayer", true);
	room_goto(rMenuRoom);
}
else if(layer_get_visible("CreditsLayer")){
	layer_set_visible("CreditsLayer", false);
	layer_set_visible("MenuLayer", true);
	room_goto(rMenuRoom);
}