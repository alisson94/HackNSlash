if keyboard_check_pressed(ord("Q")) room_goto(Room2)

if keyboard_check_pressed(ord("K")) && !onAnimation state = "attack1"
if keyboard_check_pressed(ord("J")) state = "dash"
if keyboard_check_pressed(ord("E")) && !onAnimation && numItensHeath>0 state = "healing"
if keyboard_check_pressed(ord("H")) numItensHeath++
if keyboard_check(ord("L")) && !onAnimation state = "block"
if keyboard_check_released(ord("L")){
	state = "move"
	parry_end = false
}

if place_meeting(x,y + vsp, oWall){
	while !place_meeting(x,y + sign(vsp), oWall){
		y+=sign(vsp)
	}
	vsp = 0
}else {
	vsp += grav
			
	if vsp > 0{
		switchSprite(sPlayerFall,0)
	}else if vsp <= 0{
		switchSprite(sPlayerJump,0)
	}
}

switch (state){
	case "move":
		//default state
		move = dPressed - aPressed
		hsp = move * spd

		//manual moviment
		x += hsp
		y += vsp
		
		if keyboard_check_pressed(ord("W")){
			vsp = jump
		}
		
		if !onAnimation{//troca de sprite e lado
			if move >0{
				switchSprite(sPlayerRun, 0)
				image_xscale = img_scale
				if !audio_is_playing(snd_player_run) audio_play_sound(snd_player_run, 2, 0)
		
			}else if move < 0{
				switchSprite(sPlayerRun, 0)
				image_xscale = -img_scale
			}else{
				switchSprite(sPlayerIdle, 0)
			}
			
		}
		
		
	break
	
	case "attack1":
		switchSprite(sPlayerAttack1, 0)
		if image_index == 2{
			create_hitbox(x,y,self, sPlayerAttack1Hitbox, 0, 4, 3, image_xscale)
			audio_play_sound(snd_player_attack_2, 3,0)
		}
		onAnimation = true
		
		if keyboard_check_pressed(ord("K")) and image_index > 2{
			isCombo = true
		}
		
	break
	
	case "attack2":
		switchSprite(sPlayerAttack2, 0)
		if image_index == 3{
			create_hitbox(x,y,self, sPlayerAttack2Hitbox, 3, 4, 3, image_xscale)
			audio_play_sound(snd_player_attack_1, 3,0)

		}
		onAnimation = true
		
		if keyboard_check_pressed(ord("K")) and image_index > 2{
			isCombo = true
		}
		
	break
	
	case "attack3":
		switchSprite(sPlayerAttack3, 0)
		if image_index == 2{
			create_hitbox(x,y,self, sPlayerAttack3Hitbox, 12, 4, 4, image_xscale)
			audio_play_sound(snd_player_attack_2, 3,0)

		}
		onAnimation = true
	break
	
	case "attacked":
		switchSprite(sPlayerTakeHit, 0)
		x += knockback_speed
		onAnimation = true
	break
	
	case "dash":
		if !spd_dash <= 0{
			switchSprite(sPlayerSlide,0)
			spd_dash = approch(spd_dash, 0, 4)
		}
		
		x += spd_dash*sign(image_xscale)
		onAnimation = true
		if spd_dash == 0{
			//spd_dash = 0
			switchSprite(sPlayerStand, 0)
		}
	break
	case "block":
		switchSprite(sPlayerBlock, 0)
		if !parry_end {
			create_parrybox(x, y, 20)
			parry_end = true
		}
		
	break
	case "healing":
		if hp+20>max_hp{
			hp = max_hp
		}else{
			hp+=20
		}
		
		numItensHeath--
		state="move"
		
	break
	case "death":
		switchSprite(sPlayerDeath, 0)
		onAnimation = true
	break
}

//show_debug_message(state)