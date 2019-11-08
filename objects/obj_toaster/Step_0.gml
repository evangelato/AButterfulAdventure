/// @description Insert description here
// You can write your code in this editor
// Horizontal Collision
if (place_meeting(x, y , obj_player)) {
	sprite_index = spr_toaster_up;
	instance_deactivate_object(obj_player);
	obj_butter_toast.verticalSpeed = 4;
}


