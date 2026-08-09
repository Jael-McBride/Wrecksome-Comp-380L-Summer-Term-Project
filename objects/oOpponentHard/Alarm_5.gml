///@description mining away I dont even know what to mine for I'll mine it anyway in this minecraft day

var _distanceMine = 150; 
var _spawn_angleMine = image_angle - 180;
var _spawn_xMine = x + lengthdir_x(_distanceMine, _spawn_angleMine);
var _spawn_yMine = y + lengthdir_y(_distanceMine, _spawn_angleMine);

instance_create_layer(_spawn_xMine, _spawn_yMine, "Instances", oMine);