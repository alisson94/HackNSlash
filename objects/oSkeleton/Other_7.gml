animation_on = false
if state == "attack" or state == "attacked"{
	state = "chase"
	if hp <= 0 {
		state = "death"
	}

}else if state == "death"{
	instance_destroy(self)
	global.quantEnemy--
	global.quantEnemyDeath++
	
	instance_create_layer(x, y, "Instances", oCoin)
}




