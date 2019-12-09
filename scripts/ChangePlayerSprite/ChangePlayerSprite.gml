/// @function ChangePlayerSprite()

if (health <= 100 && health > 88.8 && obj_player.sprite_index != spr_player1) {
	obj_player.sprite_index = spr_player1;
} else if (health <= 88.8 && health > 76.6 && obj_player.sprite_index != spr_player2) {
	obj_player.sprite_index = spr_player2;
} else if (health <= 76.6 && health > 66 && obj_player.sprite_index != spr_player3) {
	obj_player.sprite_index = spr_player3;
} else if (health <= 66 && health > 56.3 && obj_player.sprite_index != spr_player4) {
	obj_player.sprite_index = spr_player4;
} else if (health <= 56.3 && health > 47.3 && obj_player.sprite_index != spr_player5) {
	obj_player.sprite_index = spr_player5;
} else if (health <= 47.3 && health > 39.1 && obj_player.sprite_index != spr_player6) {
	obj_player.sprite_index = spr_player6;
} else if (health <= 39.1 && health > 31.6 && obj_player.sprite_index != spr_player7) {
	obj_player.sprite_index = spr_player7;
} else if (health <= 31.6 && health > 25 && obj_player.sprite_index != spr_player8) {
	obj_player.sprite_index = spr_player8;
} else if (health <= 25 && health > 19.1 && obj_player.sprite_index != spr_player9) {
	obj_player.sprite_index = spr_player9;
} else if (health <= 19.1 && health > 14.1 && obj_player.sprite_index != spr_player10) {
	obj_player.sprite_index = spr_player10;
} else if (health <= 14.1 && health > 9.8 && obj_player.sprite_index != spr_player11) {
	obj_player.sprite_index = spr_player11;
} else if (health <= 9.8 && health > 6.3 && obj_player.sprite_index != spr_player12) {
	obj_player.sprite_index = spr_player12;
} else if (health <= 6.3 && health > 3.5 && obj_player.sprite_index != spr_player13) {
	obj_player.sprite_index = spr_player13;
} else if (health <= 3.5 && health > 1.6 && obj_player.sprite_index != spr_player14) {
	obj_player.sprite_index = spr_player14;
} else if (health <= 1.6 && sprite_index != spr_player15) {
	obj_player.sprite_index = spr_player15;
}