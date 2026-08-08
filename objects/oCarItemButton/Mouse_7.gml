switch(car_id) {
    case 0: // Sports Car
        global.playerCar = oF40;
        break;
    case 1: // Pink Phantom
        global.playerCar = oPinkPhantom;
		if(global.pinkUnlocked == 0)
			return;
        break;
    case 2: // Oshkosh
        global.playerCar = oOshKosh;
		if(global.oshkoshUnlocked == 0)
			return;
        break;
    case 3: // Supercar
        global.playerCar = oVeneno;
		if(global.venenoUnlocked == 0)
			return;
        break;
    case 4: // Miata
        global.playerCar = oMiata;
        break;
    case 5: // Charger
        global.playerCar = oCharger;
        break;
}

room_goto(rTrackRoom);
layer_set_visible("CarSelectLayer", false);
layer_set_visible("TrackSelectLayer", true)

audio_play_sound(sfxButtonClick_1, 1, false);