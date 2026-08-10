if (!instance_exists(oPlayer)) exit;

draw_set_font(Upheaval_TT_Misc);
draw_text(1245, 24, string(global.lap) + "/3");

draw_set_halign(fa_right);
draw_text(1245, 646, oPlayer.currentPower);

var hp = (oPlayer.carHealth / oPlayer.maxHealth) * 100;
draw_healthbar(36, 594, 270, 612, hp, c_black, c_red, c_green, 0, true, true);
draw_healthbar(36, 663, 270, 681, oPlayer.boostGauge, c_black, c_blue, c_blue, 0, true, true);