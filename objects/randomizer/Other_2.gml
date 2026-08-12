randomise()
audio_group_load(currentSongPlaying)

if(global.musicOn == true){
	audio_group_set_gain(currentSongPlaying, 1, 0)
} else { 
	audio_group_set_gain(currentSongPlaying, 0, 0)
}

if(global.sfxOn == true){
	audio_group_set_gain(audiogroup_default, 1, 0)
} else {
	audio_group_set_gain(audiogroup_default, 0, 0)
}