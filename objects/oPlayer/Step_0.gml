
		
if keyboard_check_pressed(ord("K")) && !onAnimation state = "attack"
if keyboard_check_pressed(ord("J")) state = "dash"


switch (state){
	case "move":
		//defaukt state
		move = dPressed - aPressed
hsp = move * spd
	
if state != "death"{//manual moviment
	x+= hsp
	y+= vsp
		
	if keyboard_check_pressed(ord("W")){
		vsp = jump
	}
}
		
if !onAnimation{//troca de sprite e lado
	if move >0{
		switchSprite(sPlayerRun, 0)
		image_xscale = 2.75
		if !audio_is_playing(snd_player_run) audio_play_sound(snd_player_run, 2, 0)
		
	}else if move < 0{
		switchSprite(sPlayerRun, 0)
		image_xscale = -2.75
	}else{
		switchSprite(sPlayer, 0)
	}
			
	if vsp > 0{
		switchSprite(sPlayerFall,0)
	}else if vsp < 0{
		switchSprite(sPlayerJump,0)
	}
}
		
if y + vsp > 480 {
	while !(y + sign(vsp)> 480){
		y+=sign(vsp)
	}
	vsp = 0
}else {
	vsp += grav
}
	break
	case "attack":
		switchSprite(sPlayerAttack1, 0)
		if image_index == 4{
			create_hitbox(x,y,self, sPlayerAttack1Hitbox, 6, 4, 2, image_xscale)
			audio_play_sound(snd_player_attack_1, 3,0)
		}
		onAnimation = true
		
		if keyboard_check_pressed(ord("K")) and image_index > 2{
			isCombo = true
		}
		
	break
	case "attack2":
		switchSprite(sPlayerAttack2, 0)
		if image_index == 4{
			create_hitbox(x,y,self, sPlayerAttack2Hitbox, 10, 4, 3, image_xscale)
			audio_play_sound(snd_player_attack_2, 3,0)

		}
		onAnimation = true
		isCombo = false
		
	break
	case "attacked":
		switchSprite(sPlayerTakeHit, 0)
		x += knockback_speed
		onAnimation = true
	break
	case "dash":
		x += spd*5*sign(image_xscale)
		leng_dash += abs(spd*5*sign(image_xscale))
		onAnimation = true
		if leng_dash > 300{
			leng_dash = 0 
			state = "move"
			onAnimation = false
		}
	break
	case "death":
		switchSprite(sPlayerDeath, 0)
		onAnimation = true
	break
}

//show_debug_message(state)