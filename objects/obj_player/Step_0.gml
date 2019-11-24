/// @description 
// Get Player Input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);
key_dash = keyboard_check(vk_shift);
oldhealth = health;


if (!disabled) {
	// Calculate Movement
	if (key_dash) {
		health -= 0.1;
	}
	
	var move = key_right - key_left;
	
	horizontalSpeed =  (move * walkSpeed) + momentum;
	
	if (place_meeting(x, y + 1, obj_floor)) {
		var collidedFloor = instance_place(x, y + 1, obj_floor);
		if (collidedFloor.hasButter) {
			fric = 0;
		} else {
			fric = 4;
		}
	}

	if (move > 0) {
		momentum += 0.5;
		momentum = clamp (momentum,0,10);
	}

	else if (move < 0) {
		momentum -= 0.5;
		momentum = clamp (momentum,-10,0);
	}
	
	if (sign(horizontalSpeed)) && (move = 0) {
		momentum -= fric;
		momentum = clamp (momentum,0,10);
	} else if (!sign(horizontalSpeed)) && (move = 0){
		momentum += fric;
		momentum = clamp (momentum,-10,0);
	}

	verticalSpeed = verticalSpeed + grav;

	if (place_meeting(x, y + 1, obj_solid) && key_jump) {
		verticalSpeed = -7;
	}

	// Horizontal Collision
	if (place_meeting(x + horizontalSpeed, y , obj_solid)) {
		while (!place_meeting(x+sign(horizontalSpeed), y, obj_solid)) {
			x = x + sign(horizontalSpeed)
		}
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;

	// Vertical Collision
	if (place_meeting(x, y + verticalSpeed, obj_solid)) {
		while (!place_meeting(x, y + sign(verticalSpeed), obj_solid)) {
			y = y + sign(verticalSpeed)
		}
		verticalSpeed = 0;
	}
	y = y + verticalSpeed;
}


// Animation
if (oldhealth != health) {
	if (health <= 100 && health > 90 && sprite_index != spr_player_100) {
		sprite_index = spr_player_100;
	} else if (health <= 90 && health > 75 && sprite_index != spr_player_90) {
		sprite_index = spr_player_90;
	} else if (health <= 75 && health > 60 && sprite_index != spr_player_75) {
		sprite_index = spr_player_75;
	} else if (health <= 60 && health > 50 && sprite_index != spr_player_60) {
		sprite_index = spr_player_60;
	} else if (health <= 50 && health > 35 && sprite_index != spr_player_50) {
		sprite_index = spr_player_50;
	} else if (health <= 35 && health > 15 && sprite_index != spr_player_35) {
		sprite_index = spr_player_35;
	} else if (health <= 15 && health > 5 && sprite_index != spr_player_15) {
		sprite_index = spr_player_15;
	} else if (health <= 5 && sprite_index != spr_player_5) {
		sprite_index = spr_player_5;
	}
}

// Respawn when dead
if (health <= 0) {
	health = 100;
	sprite_index = spr_player_100;
	x = global.room_start_x;
	y = global.room_start_y;
	room_restart();
}
