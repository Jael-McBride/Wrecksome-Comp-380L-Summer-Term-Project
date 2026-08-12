// This is a silly hack. Due to time constraints, it had to be done

switch(button_id) {
    case 0: // Singleplayer
        layer_set_visible("MenuLayer", false);
        layer_set_visible("CarSelectLayer", true);
        layer_set_visible("TrackSelectLayer", false);
        room_goto(rPlayerSelect);
        break;
    case 1: // How to Play
        layer_set_visible("MenuLayer", false);
        layer_set_visible("TutorialLayer", true);
        room_goto(rTutorialRoom);
        break;
    case 2: // Settings
        layer_set_visible("SettingsLayer", true);
        layer_set_visible("MenuLayer", false);
        room_goto(rSettingsRoom);
        break;
    case 3: // Quit
        game_end();
        break;
    case 4: // Menu
        layer_set_visible("MenuLayer", true);
        layer_set_visible("PauseLayer", false);
        layer_set_visible("RaceCountdownLayer", false);
        layer_set_visible("TutorialLayer", false);
        layer_set_visible("GameHUDLayer", false);
        layer_set_visible("CreditsLayer", false);
        layer_set_visible("CarSelectLayer", false);
        layer_set_visible("SettingsLayer", false);
        global.lap = 1;
		audio_stop_all()
        room_goto(rMenuRoom);
        break;
    case 5: // Resume
        oPauseManager.paused = false;
        oPauseManager.update_pause();
        break;
    case 6: // Credits
        layer_set_visible("MenuLayer", false);
        layer_set_visible("CreditsLayer", true);
        room_goto(rCreditsRoom);
        break;
	case 7: // Restart
		if(layer_get_visible("LoseScreenLayer"))
			layer_set_visible("LoseScreenLayer", false);
		else
			layer_set_visible("WinScreenLayer", false);
		audio_stop_all()
		room_restart();
		global.currentSong = audio_play_sound(RocketRace, 11, true)
		global.lap = 1;
		break;
        
}

audio_play_sound(sfxButtonClick_1, 1, false);