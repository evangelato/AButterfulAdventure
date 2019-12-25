/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_toasterUp;
with (obj_player) {
	hasControl = false;
	visible = false;
	x = 0;
	y = 0;
	momentum = 0;
}

with (obj_camera) {
	follow = obj_butterToast.id;
}

with (obj_butterToast) {
	verticalSpeed = 7;
}
