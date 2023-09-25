var hp_bar = oPlayer.hp/oPlayer.max_hp
var bar_width = 190

draw_text_transformed(x + 200, y, "HP: "+ string(hp_bar*100), 2, 2,0)
draw_rectangle_color(x,y,x+bar_width*hp_bar,y+20, c_white, c_white, c_white, c_white, false)
draw_text_transformed(x, y+30, "Nivel: "+ string(global.nivel), 2, 2,0)

draw_text_transformed(x,y+60, "Moedas: "+ string(global.coins), 2,2, 0)

draw_sprite(sItemHeath, 0, x, height_-75)
draw_text_transformed(x+50, height_-50, "X "+ string(oPlayer.numItensHeath), 2, 2,0)

