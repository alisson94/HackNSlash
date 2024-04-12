switch state{
	case "chase":
		var sinal = -sign(x-oPlayer .x)
		
		//var collision = collision_rectangle(x+91,y+5, x+91+hsp*-sign(x-oPlayer.x), y+1, oSkeleton,false, false)
		
		if instance_exists(oPlayer){
			if x-oPlayer.x != 0 image_xscale = 2.5 * sinal
			if point_distance(x, y, oPlayer.x, oPlayer.y) < 100{	
				state = "attack"
				
			}else if point_distance(x, y, oPlayer.x, oPlayer.y) < range_attack{
				x = approch(x, x+200*sinal, 6)
				
			} else{
				
				x+=hsp*sinal
				switchSprite(spriteRun,0)
			}
		}
	break
	case "attack":
		switchSprite(spriteAttack, 0)
		
		if image_index == 6{
			create_hitbox(x, y, self, spriteAttackHitbox, 4,4,1, image_xscale)
			
			//show_debug_message("hitbox" + string(hitboxes))
		}
		break
	case "attacked":
		switchSprite(spriteTake_Hit, 0)
		//x = lerp(x, x+10, 0.5)
		x += knockback_speed 
		//if !audio_is_playing(snd_enemy_damage) audio_play_sound(snd_enemy_damage, 2, 0)
		
		break
	case "death":
		switchSprite(spriteDeath, 0)
		break

}










