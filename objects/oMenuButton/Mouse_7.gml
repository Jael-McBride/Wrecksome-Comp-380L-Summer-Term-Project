switch (button_id) {
    case 0: // Singleplayer
        room_goto(rGameRoom);
        break;
    case 1: // How to Play
        room_goto(helpRoom);
        break;
    case 2: // Settings
        break;
    case 3: // Quit
        game_end();
        break;
}