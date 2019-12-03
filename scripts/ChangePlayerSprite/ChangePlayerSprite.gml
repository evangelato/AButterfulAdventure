/// @function ChangePlayerSprite()

if (health <= 100 && health > 88.8 && obj_player.sprite_index != spr_player_1) {
	obj_player.sprite_index = spr_player_1;
} else if (health <= 88.8 && health > 76.6 && obj_player.sprite_index != spr_player_2) {
	obj_player.sprite_index = spr_player_2;
} else if (health <= 76.6 && health > 66 && obj_player.sprite_index != spr_player_3) {
	obj_player.sprite_index = spr_player_3;
} else if (health <= 66 && health > 56.3 && obj_player.sprite_index != spr_player_4) {
	obj_player.sprite_index = spr_player_4;
} else if (health <= 56.3 && health > 47.3 && obj_player.sprite_index != spr_player_5) {
	obj_player.sprite_index = spr_player_5;
} else if (health <= 47.3 && health > 39.1 && obj_player.sprite_index != spr_player_6) {
	obj_player.sprite_index = spr_player_6;
} else if (health <= 39.1 && health > 31.6 && obj_player.sprite_index != spr_player_7) {
	obj_player.sprite_index = spr_player_7;
} else if (health <= 31.6 && health > 25 && obj_player.sprite_index != spr_player_8) {
	obj_player.sprite_index = spr_player_8;
} else if (health <= 25 && health > 19.1 && obj_player.sprite_index != spr_player_9) {
	obj_player.sprite_index = spr_player_9;
} else if (health <= 19.1 && health > 14.1 && obj_player.sprite_index != spr_player_10) {
	obj_player.sprite_index = spr_player_10;
} else if (health <= 14.1 && health > 9.8 && obj_player.sprite_index != spr_player_11) {
	obj_player.sprite_index = spr_player_11;
} else if (health <= 9.8 && health > 6.3 && obj_player.sprite_index != spr_player_12) {
	obj_player.sprite_index = spr_player_12;
} else if (health <= 6.3 && health > 3.5 && obj_player.sprite_index != spr_player_13) {
	obj_player.sprite_index = spr_player_13;
} else if (health <= 3.5 && health > 1.6 && obj_player.sprite_index != spr_player_14) {
	obj_player.sprite_index = spr_player_14;
} else if (health <= 1.6 && sprite_index != spr_player_15) {
	obj_player.sprite_index = spr_player_15;
}