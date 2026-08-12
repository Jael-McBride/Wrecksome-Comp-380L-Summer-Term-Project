	var _vx = camera_get_view_x(view_camera[0]) + 800
	var _vy = camera_get_view_y(view_camera[0]) + 450
	
	var _dx = x
	var _dy = y
	
	var soundDistance = 200/point_distance(_vx,_vy,_dx,_dy)
	soundDistance = clamp(soundDistance, 0, 1)
	if (soundDistance > 1){
		soundDistance = 1
	}
	
	audio_sound_gain(trafficNoises,soundDistance,0)