/// @function ChangePlayerSprite()

if (health <= 100 && health > 90 && obj_player.sprite_index != spr_player_100) {
	obj_player.sprite_index = spr_player_100;
} else if (health <= 90 && health > 75 && obj_player.sprite_index != spr_player_90) {
	obj_player.sprite_index = spr_player_90;
} else if (health <= 75 && health > 60 && obj_player.sprite_index != spr_player_75) {
	obj_player.sprite_index = spr_player_75;
} else if (health <= 60 && health > 50 && obj_player.sprite_index != spr_player_60) {
	obj_player.sprite_index = spr_player_60;
} else if (health <= 50 && health > 35 && obj_player.sprite_index != spr_player_50) {
	obj_player.sprite_index = spr_player_50;
} else if (health <= 35 && health > 15 && obj_player.sprite_index != spr_player_35) {
	obj_player.sprite_index = spr_player_35;
} else if (health <= 15 && health > 5 && obj_player.sprite_index != spr_player_15) {
	obj_player.sprite_index = spr_player_15;
} else if (health <= 5 && sprite_index != spr_player_5) {
	obj_player.sprite_index = spr_player_5;
}