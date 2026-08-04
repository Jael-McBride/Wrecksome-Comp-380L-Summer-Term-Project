draw_set_font(fSelectionFont)
draw_text(1120, 32, global.lap)
draw_text(1135, 32, "/3")

draw_text(880, 544, "Current item: " + currentPower)

var hp = (carHealth/maxHealth)*100
draw_healthbar(64, 640, 192, 610, hp, c_black, c_red, c_green, 0, true, true)

draw_healthbar(64, 672, 192, 650, boostGauge, c_black, c_blue, c_blue, 0, true, true)
