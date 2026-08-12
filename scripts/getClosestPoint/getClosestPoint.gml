function getClosestPoint(path, locX, locY){
	var bestPos = 0;
	var minDist = infinity
	
	for(var i = 0; i <= 100; i++){
		var pos = i/100;
		
		var px = path_get_x(path, pos)
		var py = path_get_y(path, pos)
		
		var dist = point_distance(locX, locY, px, py);
		if (dist < minDist){
			minDist = dist;
			bestPos = pos
		}
	}
	return bestPos
}