if isCombo {
	state = "attack2"
	return
}

if state == "attack" or state == "attack2" or state == "attacked"{
	onAnimation = false
	state = "move"
}


