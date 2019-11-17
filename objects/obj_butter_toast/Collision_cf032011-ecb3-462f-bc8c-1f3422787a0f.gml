/// @description Insert description here
// You can write your code in this editor
if (!hasCollidedWithFork) {
	verticalSpeed = 0;
	obj_player.x = obj_fork.x - 16;
	obj_player.y = obj_fork.y + 64;
	obj_player.visible = true;
	obj_player.disabled = false;
	hasCollidedWithFork = true;
}