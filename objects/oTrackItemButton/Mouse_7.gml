switch(track_id) {
    case 0: // Shipping Yard
        room_goto(rGameRoom);
        break;
    case 1: // Grass Track
        room_goto(rTileSetTesting);
        break;
    case 2: // Sand Track
        room_goto(rTileSetSandy);
        break;
    case 3: // Twisty Sands
        room_goto(rSandyFigure8);
        break;
    case 4: // Dirt Highway
        room_goto(rDirtHighway);
        break;
	case 5: // Racetrack
		room_goto(rPresentGameRoom);
		break;
	case 6: // Concrete
		room_goto(rTileSetConcrete);
		break;
	case 7: // Dirt Track
		room_goto(rDirtTrack);
		break;
}

layer_set_visible("TrackSelectLayer", false);

audio_play_sound(sfxButtonClick_1, 1, false);