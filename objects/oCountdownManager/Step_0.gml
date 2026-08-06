// put light instances into the lights array
if (!setup_done) {
    if (instance_number(oLight) >= 3) {
        var _i = 0;
        with (oLight) {
            other.lights[_i] = id;
            _i++;
        }
        lights[0].light_state = 0;
        lights[1].light_state = 0;
        lights[2].light_state = 0;
        alarm[0] = game_get_speed(gamespeed_fps);
        setup_done = true;
    }
}