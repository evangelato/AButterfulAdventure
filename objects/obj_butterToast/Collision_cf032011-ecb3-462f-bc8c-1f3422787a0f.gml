/// @description Insert description here
// You can write your code in this editor
if (!hasCollidedWithFork) {
	hasCollidedWithFork = true;
	verticalSpeed = 0;
	health = 100;
	ChangePlayerSprite();
	with(obj_player) {
		x = obj_fork.x - 16;
		y = obj_fork.y + 64;
		visible = true;
		hasControl = true;
	}
	
	with(obj_camera) {
		follow = obj_player;
	}
}