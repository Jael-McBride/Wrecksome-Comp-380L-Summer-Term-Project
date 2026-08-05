switch(track_id) {
    case 0: // Demo
        room_goto(rPresentGameRoom);
        break;
    case 1: // Test
        room_goto(rGameRoom);
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
}

layer_set_visible("TrackSelectLayer", false);
layer_set_visible("RaceCountdownLayer", true);