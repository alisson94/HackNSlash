return
max_enemy =  2// 5 + 10*(global.nivel-1)
show_debug_message(global.quantEnemyDeath)
if global.quantEnemyDeath > 5 + 10*global.nivel{
	global.nivel++
}

if global.nivel >= 3 && !instance_exists(oEvilWizard){
	if already_boss_nivel == global.nivel return
	already_boss_nivel = global.nivel
	var boss = instance_create_layer(room_width + 100, 480, "Instances", oEvilWizard)
}

//spawn de monstros
if global.quantEnemy >= max_enemy return

randomise()
var pos_choose = 0

while point_distance(oPlayer.x, oPlayer.y, pos_choose, oPlayer.y) < camera_get_view_width(view_camera[0]/2){
	var pos_x_1 = irandom_range(0, camera_get_view_x(view_camera[0]))
	var pos_x_2 = irandom_range(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]), room_width)

	pos_choose = choose(pos_x_1, pos_x_2)
}



var enemyType = choose(oSkeleton, oGoblin)

var enemy = instance_create_layer(pos_choose, 480, "Instances", enemyType)

enemy.image_xscale = 2.75
enemy.image_yscale = 2.75
global.quantEnemy++

