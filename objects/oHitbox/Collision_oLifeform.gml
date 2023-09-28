if creator == noone or creator == other or ds_list_find_index(hit_objects, other) != -1 or 
	(creator.isEnemy and other.isEnemy)
{
	exit
}

if other.state == "death" return;//se morto retorna

ds_list_add(hit_objects, other)
other.knockback_speed = knockback*sign(other.x - creator.x)

if other.object_index == oPlayer {
	screenshake(5, 12, 0.8)
}else {
	screenshake(5, 7, 0.8)
}

repeat(20){
	var effect = instance_create_layer(other.x, other.y-50, "effects", oHitEffect)
}

if other.state != "block"{
	other.hp -= damage
	if other.object_index != oEvilWizard{
		other.state = "attacked"
	}
}

