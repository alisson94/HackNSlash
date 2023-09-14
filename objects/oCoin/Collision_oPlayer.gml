if sprite_index != s_coin_take{
	global.coins++
	switchSprite(s_coin_take,0)
	audio_play_sound(snd_coin_collected, 3, false)
}
