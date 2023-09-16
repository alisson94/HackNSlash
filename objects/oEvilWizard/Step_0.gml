switch state{
	case "chase":
		if instance_exists(oPlayer){
			image_xscale = scale * -sign(x-oPlayer.x)
			if point_distance(x, y, oPlayer.x, oPlayer.y) > range_attack {
				if x - oPlayer.x > 0 {
					x-=hsp
					switchSprite(sEvilWizardRun,0)
				}else{
					x+=hsp
					switchSprite(sEvilWizardRun,0)
				}

			} else{
				state =	"attack1"
			}
		}
		break
	case "stall":
		switchSprite(sEvilWizardIdle, 0)
	break
	case "attack1":
		switchSprite(sEvilWizardAttack1, 0)
		if image_index == 4{
			create_hitbox(x, y, self, sEvilWizardAttack1HitBox, 14,4,1, image_xscale)
			
			show_debug_message("hitbox")
		}
		break
	case "attacked":
		//switchSprite(sEvilWizardTake_hit, 0)
		
		//x += knockback_speed 
		
		if hp < 0 {
			state = "death"
		}
		break
	case "death":
		switchSprite(sEvilWizardDeath, 0)
		break

}










