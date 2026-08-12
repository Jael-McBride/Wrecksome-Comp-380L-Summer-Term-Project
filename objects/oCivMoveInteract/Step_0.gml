hspd=lengthdir_x(spd, direction); // extracting horizontal movement
vspd=lengthdir_y(spd, direction); // extracting vertical movement

move_and_collide(hspd, vspd, [oPlayer, oTestWall, oOpponentParent, oOpponentHard])

if(place_meeting(x-(7+hspd),y,[oPlayer, oTestWall, oOpponentParent, oOpponentHard])){
	x+=(7+hspd)
	if(contactState == 0){
		carHealth -= 1
		contactState = 1
	}
}
if(place_meeting(x+(7+hspd),y,[oPlayer, oTestWall, oOpponentParent, oOpponentHard])){
	x-=(7+hspd)
	if(contactState == 0){
		carHealth -= 1
		contactState = 1
	}
}
if(place_meeting(x,y-(7+vspd),[oPlayer, oTestWall, oOpponentParent, oOpponentHard])){
	y+=(7+vspd)
	if(contactState == 0){
		carHealth -= 1
		contactState = 1
	}
}
if(place_meeting(x,y+(7+vspd),[oPlayer, oTestWall, oOpponentParent, oOpponentHard])){
	y-=(7+vspd)
	if(contactState == 0){
		carHealth -= 1
		contactState = 1
}
}

if(!place_meeting(x,y,[oPlayer, oTestWall, oOpponentParent, oOpponentHard])){
	contactState = 0
}

if(place_meeting(x,y,[oRocket, oMine])){
	carHealth -= 999999
}

if(carHealth <= 0){
	instance_create_layer(x,y,"Instances", oPlosion)
	instance_destroy()
}

if(x > room_width || y > room_height){
	instance_destroy()
}
