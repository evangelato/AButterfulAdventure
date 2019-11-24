/// @description Insert description here
// You can write your code in this editor
// Horizontal Collision
if (place_meeting(x, y , obj_player)) {
	sprite_index = spr_toaster_up;
	obj_player.disabled = true;
	obj_player.visible = false;
	obj_camera.follow = obj_butter_toast;
	obj_player.x = -32;
	obj_player.y = -32
	obj_butter_toast.verticalSpeed = 7;
}


