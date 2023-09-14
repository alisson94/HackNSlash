var hp_bar = oPlayer.hp/oPlayer.max_hp
var bar_width = 190

draw_rectangle(x,y,x+bar_width*hp_bar,y+20, true)
draw_text_transformed(x, y, "Nivel: "+ string(nivel), 2, 2,0)

draw_text_transformed(x,y+20, "Moedas: "+ string(global.coins), 2,2, 0)




