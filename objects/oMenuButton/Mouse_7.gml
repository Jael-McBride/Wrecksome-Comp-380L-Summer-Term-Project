switch (button_id) {
    case 0: // Singleplayer
        layer_set_visible("MenuLayer", false);
        room_goto(rGameRoom);
        break;
    case 1: // How to Play
        layer_set_visible("MenuLayer", false);
        room_goto(helpRoom);
        break;
    case 2: // Settings
        break;
    case 3: // Quit
        game_end();
        break;
}