///@description oiling up
var _distanceMine = 150; 
var _spawn_angleMine = image_angle - 180;
var _spawn_xMine = x + lengthdir_x(_distanceMine, _spawn_angleMine);
var _spawn_yMine = y + lengthdir_y(_distanceMine, _spawn_angleMine);

instance_create_layer(_spawn_xMine, _spawn_yMine, "Instances", oOilSpill);