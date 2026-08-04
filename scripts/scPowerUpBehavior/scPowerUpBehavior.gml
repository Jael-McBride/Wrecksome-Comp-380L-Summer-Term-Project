//powerup behavior
//i keep forgetting to break


function pickup(player, powerUp){
powerUpName = powerUp.name
switch powerUpName{
	
case "shield":
	player.currentPower = "shield"
	show_debug_message("shield get!")
	break;
	
case "oil":
	player.currentPower = "oil"
	show_debug_message("oil get!")
	break;
	
case "mine":
	player.currentPower = "mine"
	show_debug_message("mine get!")
	break;
	
case "gun":
	player.currentPower = "gun"
	player.rockets = 3
	show_debug_message("gun get!")
	break;
	
case "repair":
	player.carHealth = player.maxHealth
	show_debug_message(player.carHealth)
	break;
	
default:
	player.boostGauge += 25
	player.boostGauge = clamp(0,100, boostGauge)
	show_debug_message(player.boostGauge)
}
}