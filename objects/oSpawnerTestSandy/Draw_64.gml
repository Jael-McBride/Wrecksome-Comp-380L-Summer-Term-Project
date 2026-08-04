if (instance_exists(inst)){
var hp = (inst.carHealth/inst.maxHealth)*100
draw_healthbar(64, 640, 192, 610, hp, c_black, c_red, c_green, 0, true, true)

draw_healthbar(64, 672, 192, 650, inst.boostGauge, c_black, c_blue, c_blue, 0, true, true)
}