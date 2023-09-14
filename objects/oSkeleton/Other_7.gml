animation_on = false
if state == "attack" or state == "attacked"{
	state = "chase"

}else if state == "death"{
	instance_destroy(self)
	global.quantEnemy--
	
	instance_create_layer(x, y, "Instances", oCoin)
}




