/// @description Insert description here
// You can write your code in this editor
key_dash = keyboard_check(vk_shift);

if (place_meeting(x, y - 1 , obj_player) && key_dash && !hasButterTop) {
	hasButterTop = true;
}

if (place_meeting(x, y + 1 , obj_player) && key_dash && !hasButterBottom) {
	hasButterBottom = true;
}

if (place_meeting(x - 1 , y , obj_player) && key_dash && !hasButterLeft) {
	hasButterLeft = true;
}

if (place_meeting(x + 1 , y , obj_player) && key_dash && !hasButterRight) {
	hasButterRight = true;
}