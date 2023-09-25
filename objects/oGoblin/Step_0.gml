switch state{
	case "chase":
		var sinal = -sign(x-oPlayer.x)
		
		if instance_exists(oPlayer){
			if x-oPlayer.x != 0 image_xscale = 2.5 * sinal
			if point_distance(x, y, oPlayer.x, oPlayer.y) < range_attack{
				state =	"attack"
				
			} else{
				x+=hsp*sinal
				switchSprite(sGoblinRun,0)
			}
		}
	break
	case "attack":
		switchSprite(sGoblinAttack, 0)
		//show_debug_message(image_index)
		if image_index == 6{
			create_hitbox(x, y, self, sGoblinAttackHitbox, 4,4,1, image_xscale)
		}
		break
	case "attacked":
		switchSprite(sGoblinTake_Hit, 0)
		x += knockback_speed
		//if !audio_is_playing(snd_enemy_damage) audio_play_sound(snd_enemy_damage, 2, 0)
		if hp <= 0 {
			state = "death"
		}
		break
	case "death":
		switchSprite(sGoblinDeath, 0)
		break

}










