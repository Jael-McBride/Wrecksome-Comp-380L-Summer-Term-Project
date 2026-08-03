switch(car_id) {
    case 0: // Sports Car
        global.playerCar = oF40;
        break;
    case 1: // Pink Phantom
        global.playerCar = oPinkPhantom;
        break;
    case 2: // Oshkosh
        global.playerCar = oOshKosh;
        break;
    case 3: // Supercar
        global.playerCar = oVeneno;
        break;
    case 4: // Miata
        global.playerCar = oMiata;
        break;
    case 5: // Charger
        global.playerCar = oCharger;
        break;
}

room_goto(rTrackRoom);
layer_set_visible("TrackSelectLayer", true)