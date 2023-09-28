
function create_hitbox(x_pos,y_pos,creator, sprite, knockback, lifespan, damage, xscale){
	var hitbox = instance_create_layer(x_pos,y_pos,"Instances", oHitbox)
	hitbox.sprite_index = sprite
	hitbox.creator = creator
	hitbox.knockback = knockback
	hitbox.alarm[0] = lifespan
	hitbox.damage = damage
	hitbox.image_xscale = xscale
	hitbox.image_yscale = abs(xscale)

	//show_debug_message("hitbox : " + string(sprite))
}