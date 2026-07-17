if (place_meeting(x,y, oChecked_1)){
checkP += 1
}

if (checkP == 8) {
	instance_create_layer(2483, 827, "Instances", oFinishLine)
}
