//lets see if this works
//the spawner object will have to tell the car what path its using
driftAngle = 0
bestPos = 0

dd = 0

hspd = 0
vspd = 0

spd = 0
maxSpeed = 12
accel = 0.3

pointX = 0
pointY = 0

bestPos = getClosestPoint(pTestTrackPath, x, y)
//bestPos = 1

//path_start(pTestTrackPath, 10, path_action_restart, true)

image_angle = direction