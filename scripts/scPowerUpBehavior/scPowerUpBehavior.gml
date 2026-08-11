//powerup behavior
//i keep forgetting to break


function pickup(player, powerUp){
powerUpName = powerUp.name
switch powerUpName{
	
case "shield":
	player.currentPower = "shield"
	show_debug_message("shield get!")
	audio_play_sound(ShieldPickUp, 10, false)
	break;
	
case "oil":
	player.currentPower = "oil"
	show_debug_message("oil get!")
	audio_play_sound(PickUpOil, 10, false)
	break;
	
case "mine":
	player.currentPower = "mine"
	show_debug_message("mine get!")
	break;
	
case "gun":
	player.currentPower = "gun"
	player.rockets = 3
	show_debug_message("gun get!")
	audio_play_sound(Guncock, 10, false)
	break;
	
case "repair":
	player.carHealth = player.maxHealth
	show_debug_message(player.carHealth)
	audio_play_sound(hpRepair, 10, false)
	break;
	
default:
	player.boostGauge += 25
	player.boostGauge = clamp(0,100, boostGauge)
	show_debug_message(player.boostGauge)
}
}