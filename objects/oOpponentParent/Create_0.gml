//lets see if this works
//the spawner object will have to tell the car what path its using
//randomize sprite?

image_angle = direction

theSprite = randomizeSprite()

sprite_index = theSprite

checkContact = 0
lapDone = 0
lapNeeded = 3

driftAngle = 0
bestPos = 0
maxDriftAngle = 50

damageCooldown = 0

shieldState = 0

gunCooldown = 0
gun = 0

carHealth = 90

oilSpillR = 0
regularR = 1
driftR = 3
rotate = regularR

hspd = 0
vspd = 0
spd = 0

storedSpeed = 0
maxSpeed = 11 + irandom(4)
oldSpeed = maxSpeed
storedSpeed = oldSpeed
rubberBandSpeed = maxSpeed + 2
boostedSpeed = maxSpeed + 8
accel = 0.3

pointX = 0
pointY = 0

futurePointX = 0
futurePointY = 0

pathUsed = 0

bestPos = getClosestPoint(pathUsed, x, y)
//bestPos = 1

//path_start(pTestTrackPath, 10, path_action_restart, true)

contactState = 0

fastState = 0
RNGcounter = 70
