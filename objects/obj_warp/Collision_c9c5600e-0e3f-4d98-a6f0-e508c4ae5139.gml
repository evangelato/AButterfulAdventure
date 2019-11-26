/// @description Move to next room
SlideTransition(TRANS_MODE.NEXT);
with(obj_butter_toast) {
	x = other.targetX;
	y = other.targetY;
}

with(obj_player) {
	x = 0;
	y = 0;
}
