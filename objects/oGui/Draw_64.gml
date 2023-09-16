var hp_bar = oPlayer.hp/oPlayer.max_hp
var bar_width = 190

draw_text_transformed(x + 200, y, "HP: "+ string(hp_bar*100), 2, 2,0)
draw_rectangle_color(x,y,x+bar_width*hp_bar,y+20, c_white, c_white, c_white, c_white, true)
draw_text_transformed(x, y, "Nivel: "+ string(global.nivel), 2, 2,0)

draw_text_transformed(x,y+20, "Moedas: "+ string(global.coins), 2,2, 0)




