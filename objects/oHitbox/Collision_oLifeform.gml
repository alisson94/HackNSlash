if creator == noone or creator == other or ds_list_find_index(hit_objects, other) != -1 or 
	(creator.isEnemy and other.isEnemy)
{
	exit
}

if other.state == "death" return;

other.hp -= damage
ds_list_add(hit_objects, other)
other.knockback_speed = knockback*sign(other.x - creator.x)

screenshake(10, 1, 0.4)
repeat(15){
	var effect = instance_create_layer(other.x, other.y-50, "effects", oHitEffect)
}

if other.object_index != oEvilWizard{
	other.state = "attacked"
}