switch state{
	case "chase":
		var sinal = -sign(x-oPlayer .x)
		
		//var collision = collision_rectangle(x+91,y+5, x+91+hsp*-sign(x-oPlayer.x), y+1, oSkeleton,false, false)
		
		if instance_exists(oPlayer){
			if x-oPlayer.x != 0 image_xscale = 2.5 * sinal
			if point_distance(x, y, oPlayer.x, oPlayer.y) < range_attack{
				state =	"attack"
				
			} else{
				
				x+=hsp*sinal
				switchSprite(spriteRun,0)
			}
		}
	break
	case "attack":
		switchSprite(spriteAttack, 0)
		//show_debug_message(image_index)
		if image_index == attack_frame{
			create_hitbox(x, y, self, spriteAttackHitbox, 4,4,1, image_xscale)
		
		}
		break
	case "attacked":
		switchSprite(spriteTake_Hit, 0)
		//knockback_speed = approch(knockback_speed, 0, 0.1)
		x += knockback_speed 
		//if !audio_is_playing(snd_enemy_damage) audio_play_sound(snd_enemy_damage, 2, 0)
		
		break
	case "death":
		switchSprite(spriteDeath, 0)
		break

}










