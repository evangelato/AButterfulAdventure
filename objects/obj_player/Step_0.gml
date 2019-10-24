/// @description 

// Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_dash = keyboard_check(vk_shift);

// Calculate Movement
var move = key_right - key_left;

if (key_dash) {
	horizontalSpeed = move * walkSpeed * 2;
	hp -= 0.1;
	show_debug_message(string(hp));
	if (hp <= 100 && hp > 90 && sprite_index != spr_player_100) {
		sprite_index = spr_player_100;
	} else if (hp <= 90 && hp > 75 && sprite_index != spr_player_90) {
		sprite_index = spr_player_90;
	} else if (hp <= 75 && hp > 60 && sprite_index != spr_player_75) {
		sprite_index = spr_player_75;
	} else if (hp <= 60 && hp > 50 && sprite_index != spr_player_60) {
		sprite_index = spr_player_60;
	} else if (hp <= 60 && hp > 35 && sprite_index != spr_player_50) {
		sprite_index = spr_player_50;
	} else if (hp <= 35 && hp > 15 && sprite_index != spr_player_35) {
		sprite_index = spr_player_35;
	} else if (hp <= 15 && hp > 5 && sprite_index != spr_player_15) {
		sprite_index = spr_player_15;
	} else if (hp <= 5 && sprite_index != spr_player_5) {
		sprite_index = spr_player_5;
	}
} else {
	horizontalSpeed = move * walkSpeed;
}

verticalSpeed = verticalSpeed + grav;

if (place_meeting(x, y + 1, obj_wall) && key_jump) {
	verticalSpeed = -7;
}

// Horizontal Collision
if (place_meeting(x + horizontalSpeed, y , obj_wall)) {
	while (!place_meeting(x+sign(horizontalSpeed), y, obj_wall)) {
		x = x + sign(horizontalSpeed)
	}
	horizontalSpeed = 0;
}
x = x + horizontalSpeed;

// Vertical Collision
if (place_meeting(x, y + verticalSpeed, obj_wall)) {
	while (!place_meeting(x, y + sign(verticalSpeed), obj_wall)) {
		y = y + sign(verticalSpeed)
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;



