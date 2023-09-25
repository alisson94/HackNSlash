switch state{
	case "chase":
		var sinal = -sign(x-oPlayer.x)
		
		//var collision = collision_rectangle(x+91,y+5, x+91+hsp*-sign(x-oPlayer.x), y+1, oSkeleton,false, false)
		
		if instance_exists(oPlayer){
			if x-oPlayer.x != 0 image_xscale = 2.5 * sinal
			if point_distance(x, y, oPlayer.x, oPlayer.y) < range_attack{
				state =	"attack"
				
			} else{
				
				x+=hsp*sinal
				switchSprite(sSkeletonRun,0)
			}
		}
	break
	case "attack":
		switchSprite(sSkeletonAttack, 0)
		//show_debug_message(image_index)
		if image_index == 5{
			create_hitbox(x, y, self, sSkeletonAttackHitbox, 4,4,1, image_xscale)
			hitboxes++
			//show_debug_message("hitbox" + string(hitboxes))
		}
		break
	case "attacked":
		switchSprite(sSkeletonTake_Hit, 0)
		//x = lerp(x, x+10, 0.5)
		x += knockback_speed 
		//if !audio_is_playing(snd_enemy_damage) audio_play_sound(snd_enemy_damage, 2, 0)
		if hp <= 0 {
			state = "death"
		}
		break
	case "death":
		switchSprite(sSkeletonDeath, 0)
		break

}










