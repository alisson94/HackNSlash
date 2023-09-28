// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_parrybox(_x, _y, knockback){
	var parry = instance_create_layer(_x, _y, "Instances", oParrybox)
	parry.knockback = knockback
}