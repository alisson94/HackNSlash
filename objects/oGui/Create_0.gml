#region camera
x_pos = 0
y_pos = 0

target_ = oPlayer
width_ = camera_get_view_width(view_camera[0])
height_ = camera_get_view_height(view_camera[0])
#endregion
#region screenshake
x_screenshake = 0
y_screenshake = 0

#endregion

display_set_gui_size(width_,height_)
draw_set_font(f_one)

audio_play_sound(snd_fundo1, 4, true)
