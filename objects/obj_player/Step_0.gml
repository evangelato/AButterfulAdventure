/// @description 

// Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

// Calculate Movement
var move = key_right - key_left;

horizontalSpeed = move * walkSpeed;

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
