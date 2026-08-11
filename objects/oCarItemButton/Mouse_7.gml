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
    case 3: // Hypercar
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
    case 6: // Formula 1
        global.playerCar = oFormula1;
        break;
    case 7: // Ford GT40
        global.playerCar = oGT40;
        break;
    case 8: // Hummer
        global.playerCar = oHummer;
        break;
    case 9: // Supra
        global.playerCar = oSupra;
        break;
    case 10: // Silverado
        global.playerCar = oSilverado;
        break;
    case 11: // AE86
        global.playerCar = oTofu;
        break;
}

room_goto(rTrackRoom);
layer_set_visible("CarSelectLayer", false);
layer_set_visible("TrackSelectLayer", true)

audio_play_sound(sfxButtonClick_1, 1, false);