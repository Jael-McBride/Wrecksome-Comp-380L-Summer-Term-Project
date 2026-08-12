switch(car_id) {
    case 0: // Sports Car
        global.playerCar = oF40;
        break;
    case 1: // Pink Phantom
        if (global.pinkUnlocked == 0) return;
        global.playerCar = oPinkPhantom;
        break;
    case 2: // Oshkosh
        if (global.oshkoshUnlocked == 0) return;
        global.playerCar = oOshKosh;
        break;
    case 3: // Hypercar
        if (global.venenoUnlocked == 0) return;
        global.playerCar = oVeneno;
        break;
    case 4: // Miata
        global.playerCar = oMiata;
        break;
    case 5: // Charger
        global.playerCar = oCharger;
        break;
    case 6: // Formula 1
        if (global.formula1Unlocked == 0) return;
        global.playerCar = oFormula1;
        break;
    case 7: // Ford GT40
        if (global.gt40Unlocked == 0) return;
        global.playerCar = oGT40;
        break;
    case 8: // Hummer
        global.playerCar = oHummer;
        break;
    case 9: // Supra
        if (global.supraUnlocked == 0) return;
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
layer_set_visible("TrackSelectLayer", true);
audio_play_sound(sfxButtonClick_1, 1, false);