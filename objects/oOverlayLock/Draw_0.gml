var _locked = false;
switch (car_id) {
    case 1: _locked = (global.pinkUnlocked == 0); break;
    case 2: _locked = (global.oshkoshUnlocked == 0); break;
    case 3: _locked = (global.venenoUnlocked == 0); break;
    case 6: _locked = (global.formula1Unlocked == 0); break;
    case 7: _locked = (global.gt40Unlocked == 0); break;
    case 9: _locked = (global.supraUnlocked == 0); break;
}

show_debug_message("car_id=" + string(car_id) + " veneno=" + string(global.venenoUnlocked) + " locked=" + string(_locked));

if (_locked) {
    draw_sprite(sCarLocked, 0, x, y);
}