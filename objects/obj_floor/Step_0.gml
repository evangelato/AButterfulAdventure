/// @description Insert description here
// You can write your code in this editor
key_dash = keyboard_check(vk_shift);

if (place_meeting(x + xDiff, y + yDiff , obj_player) && key_dash && !hasButter) {
	sprite_index = changeSpriteTo;
	hasButter = true;
}