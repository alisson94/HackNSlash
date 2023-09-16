// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_hitbox(x_pos,y_pos,creator, sprite, knockback, lifespan, damage, xscale){
	var hitbox = instance_create_layer(x_pos,y_pos,"Instances", oHitbox)
	hitbox.sprite_index = sprite
	hitbox.creator = creator
	hitbox.knockback = knockback
	hitbox.alarm[0] = lifespan
	hitbox.damage = damage
	hitbox.image_xscale = xscale
	hitbox.image_yscale = abs(xscale)

	show_debug_message("hitbox : " + string(sprite))
}