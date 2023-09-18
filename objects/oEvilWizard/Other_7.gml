animation_on = false
if state == "attack1"{
	state = "stall"
	alarm[0] = 50

}else if state == "death"{
	instance_destroy(self)
	global.quantEnemy--
	
	instance_create_layer(x, y, "Instances", oCoin)
}




