/// @description Insert description here
// You can write your code in this editor
key_dash = keyboard_check(vk_shift);

if (place_meeting(x, y-1 , obj_player) && key_dash && !hasButter) {
	sprite_index = spr_floor_butter;
	hasButter = true;
}
