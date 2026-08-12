// put light instances into the lights array
if (!setup_done) {
    if (instance_number(oLight) >= 3) {
        // collect lights sorted by x position (left to right)
        var _list = ds_list_create();
        with (oLight) ds_list_add(_list, id);

        // simple bubble sort by x
        var _n = ds_list_size(_list);
        for (var i = 0; i < _n; i++) {
            for (var j = i + 1; j < _n; j++) {
                if (_list[| j].x < _list[| i].x) {
                    var _tmp = _list[| i];
                    _list[| i] = _list[| j];
                    _list[| j] = _tmp;
                }
            }
        }

        for (var k = 0; k < 3; k++) lights[k] = _list[| k];
        ds_list_destroy(_list);

        lights[0].light_state = 0;
        lights[1].light_state = 0;
        lights[2].light_state = 0;

        alarm[0] = game_get_speed(gamespeed_fps);
        setup_done = true;
    }
}