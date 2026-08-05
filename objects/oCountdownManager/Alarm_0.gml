step++;

// this is a hack. it goes backwards :(
switch(step) {
    case 1:
        lights[2].light_state = 1;
        break;
    case 2:
        lights[1].light_state = 1;
        break;
    case 3:
        lights[0].light_state = 1;
        break;
    case 4:
        lights[0].light_state = 2;
        lights[1].light_state = 2;
        lights[2].light_state = 2;
        break;
    case 5:
        lights[0].light_state = 0;
        lights[1].light_state = 0;
        lights[2].light_state = 0;
        layer_set_visible("RaceCountdownLayer", false);
        break;
}

if (step < 5) alarm[0] = game_get_speed(gamespeed_fps);