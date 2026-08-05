//lets see if this works
//the spawner object will have to tell the car what path its using
checkContact = 0
lapDone = 0
lapNeeded = 3

driftAngle = 0
bestPos = 0
maxDriftAngle = 40

damageCooldown = 0

carHealth = 90

regularR = 1.5
driftR = 4
rotate = regularR

dd = 0

hspd = 0
vspd = 0

spd = 0
maxSpeed = 13
oldSpeed = maxSpeed
accel = 0.3

pointX = 0
pointY = 0

futurePointX = 0
futurePointY = 0

pathUsed = 0

bestPos = getClosestPoint(pathUsed, x, y)
//bestPos = 1

//path_start(pTestTrackPath, 10, path_action_restart, true)

image_angle = direction