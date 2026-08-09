switch(track_id) {
    case 0: // Demo
        room_goto(rPresentGameRoom);
        break;
    case 1: // Dirt
        room_goto(rDirtTrack);
        break;
    case 2: // Concrete
        room_goto(rTileSetConcrete);
        break;
    case 3: // Grass
        room_goto(rTileSetTesting);
        break;
    case 4: // Sandy
        room_goto(rTileSetSandy);
        break;
	case 5: //DirtHighway
		room_goto(rDirtHighway);
		break;
}

layer_set_visible("TrackSelectLayer", false);

audio_play_sound(sfxButtonClick_1, 1, false);