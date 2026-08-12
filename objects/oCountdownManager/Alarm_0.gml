step++;

switch(step) {
    case 1:
        lights[0].light_state = 1;
        audio_play_sound(sfxCountdownRed, 1, false);
        break;
    case 2:
        lights[1].light_state = 1;
        audio_play_sound(sfxCountdownRed, 1, false);
        break;
    case 3:
        lights[2].light_state = 1;
        audio_play_sound(sfxCountdownRed, 1, false);
        break;
    case 4:
        lights[0].light_state = 2;
        lights[1].light_state = 2;
        lights[2].light_state = 2;
        global.race_started = true;
        audio_play_sound(sfxCountdownGreen, 1, false);
        break;
    case 5:
        lights[0].light_state = 0;
        lights[1].light_state = 0;
        lights[2].light_state = 0;
        layer_set_visible("RaceCountdownLayer", false);
        break;
}

if (step < 5) alarm[0] = game_get_speed(gamespeed_fps);