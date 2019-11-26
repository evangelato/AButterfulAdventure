/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_toaster_up;
with (obj_player) {
	hasControl = false;
	visible = false;
	x = -32;
	y = -32;
	momentum = 0;
}

with (obj_camera) {
	follow = obj_butter_toast;
}

with (obj_butter_toast) {
	verticalSpeed = 7;
}
