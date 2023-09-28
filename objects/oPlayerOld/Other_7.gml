onAnimation = false

if isCombo {
	if state == "attack1"{
		state = "attack2"
	}else if state == "attack2"{
		state = "attack3"
	}
	isCombo = false
	return
}

if state == "attack1" or state == "attack2" or state=="attack3" or state == "attacked"{
	
	state = "move"
}


