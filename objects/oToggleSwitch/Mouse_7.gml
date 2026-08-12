switch (setting_id) {
    case 0: 
	 global.musicOn = !global.musicOn;
	 if(global.musicOn == true){
		audio_group_set_gain(currentSongPlaying, 1, 0)
	} else { 
		audio_group_set_gain(currentSongPlaying, 0, 0)
	}

	break;
	
    case 1: 
	global.sfxOn = !global.sfxOn;
	if(global.sfxOn == true){
		audio_group_set_gain(audiogroup_default, 1, 0)
	} else { 
		audio_group_set_gain(audiogroup_default, 0, 0)
	}
	break;
	
    case 2: global.hard = !global.hard; 
	break;    
}

saveData()