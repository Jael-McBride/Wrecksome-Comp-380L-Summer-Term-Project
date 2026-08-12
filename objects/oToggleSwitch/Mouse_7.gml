switch (setting_id) {
    case 0: 
	if(global.musicOn == true){
		audio_group_set_gain(currentSongPlaying, 0, 0)
	} else { 
		audio_group_set_gain(currentSongPlaying, 1, 0)
	}
	 global.musicOn = !global.musicOn;
	break;
	
    case 1: 
	if(global.sfxOn == true){
		audio_group_set_gain(audiogroup_default, 0, 0)
	} else {
		audio_group_set_gain(audiogroup_default, 1, 0)
	}
	global.sfxOn = !global.sfxOn;

	break;
	
    case 2: global.hard = !global.hard; 
	break;    
}