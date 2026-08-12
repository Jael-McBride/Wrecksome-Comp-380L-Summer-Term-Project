function FindRespawn(objectID, instanceX, instanceY){
	var nearestThing = instance_nearest(instanceX,instanceY,oOpponentParent)
	
	if(nearestThing != noone){
		if(point_distance(instanceX, instanceY, nearestThing.x, nearestThing.y) > 100){
			objectID.instanceX = instanceX
		objectID.instanceY = instanceY
		} else{
			instanceX += 100
			objectID.instanceX = instanceX
	}
	}
}	


