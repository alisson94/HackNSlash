if global.coins >= 10 && !instance_exists(oEvilWizard){
	var boss = instance_create_layer(room_width + 100, 480, "Instances", oEvilWizard)
	boss.image_xscale = 4
	boss.image_yscale = 4
	max_enemy = 3
}

if global.quantEnemy >= max_enemy return

randomise()

var pos_x_1 = irandom_range(0, camera_get_view_x(view_camera[0]))
var pos_x_2 = irandom_range(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]), room_width)


var enemyType = choose(oSkeleton, oGoblin)

var enemy = instance_create_layer(choose(pos_x_1,pos_x_2), 480, "Instances", enemyType)

enemy.image_xscale = 2.75
enemy.image_yscale = 2.75
global.quantEnemy++

