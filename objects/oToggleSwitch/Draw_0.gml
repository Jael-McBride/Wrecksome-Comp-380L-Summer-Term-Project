var _on = false;
switch (setting_id) {
    case 0: _on = global.musicOn; break;
    case 1: _on = global.sfxOn; break;
    case 2: _on = global.hard; break;    
    // add more settings as needed
}

draw_sprite(_on ? sOnToggle : sOffToggle, 0, x, y);