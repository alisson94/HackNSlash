#region camera
if !instance_exists(target_) exit;

x_pos = lerp(x_pos, target_.x, 0.1)
y_pos = lerp(y_pos, target_.y-height_/4, 0.1)

camera_set_view_pos(view_camera[0], x_pos-width_/2, y_pos-height_/2)
#endregion