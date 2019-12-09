/// @function RoomResetPlayer(startX, startY)
/// @param startX x coordinate for player to start in the room.
/// @param startY y coordinate for player to start in the room.

health = 100;
with (obj_player) {
	momentum = 0;
	hasControl = false;
	sprite_index = spr_player1;
	x = argument[0];
	y = argument[1];
}
SlideTransition(TRANS_MODE.ROOM_RESTART);
with(obj_player) {
	hasControl = true;
}
