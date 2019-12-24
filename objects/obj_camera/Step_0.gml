/// @description Update Camera
// You can write your code in this editor


// Update destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

// Update camera view
camera_set_view_pos(cam, x - view_w_half, y - view_h_half);


layer_x(backgroundLayer1, lerp(0, camera_get_view_x(view_camera[0]), 0.5));
layer_x(backgroundLayer2, lerp(0, camera_get_view_x(view_camera[0]), 0.5));