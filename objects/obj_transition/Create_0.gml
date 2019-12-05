/// @description Size variables and mode setup
width = display_get_gui_width();
height = display_get_gui_height();
height_half = height * 0.5;
maxPercent = 1.1;

enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	GAME_RESTART,
	ROOM_RESTART,
	INTRO,
	INITIAL_INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;



