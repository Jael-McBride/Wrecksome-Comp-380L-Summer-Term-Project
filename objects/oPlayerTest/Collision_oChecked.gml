/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x,y, oChecked)){
global.checkP += 1
}

if (global.checkP == 4) {
	instance_create_layer(2519, 819, "Instances", oFinishLine)
	global.checkP = 0
}


