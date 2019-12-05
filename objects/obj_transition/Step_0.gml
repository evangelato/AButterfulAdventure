/// @description Progress the transition
if (mode != TRANS_MODE.OFF) {
	if (mode == TRANS_MODE.INTRO) {
		percent = max(0, percent - max((percent / 10), 0.005));
	}	else {
		percent = min(maxPercent, percent + max(((maxPercent - percent) / 10), 0.005));
	}
	
	if (percent == maxPercent) || (percent == 0) {
		switch(mode) {
			case TRANS_MODE.INTRO: 
				mode = TRANS_MODE.OFF;
				break;
			case TRANS_MODE.NEXT: 
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			case TRANS_MODE.GOTO: 
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			case TRANS_MODE.GAME_RESTART:
				game_restart();
				break;
			case TRANS_MODE.ROOM_RESTART:
				room_restart();
				mode = TRANS_MODE.INTRO;
				break;
			default: 
				break;
		}
	}
}