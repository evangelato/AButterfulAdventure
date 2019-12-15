/// @description Control Menu

// Item ease in
menuX += (menuXTarget - menuX) / menuSpeed;

// Keyboard Controls
if (menuControl) {
	if(keyboard_check_pressed(vk_up)) {
		menuCursor++;
		if (menuCursor >= menuItems ) {
			menuCursor = 0;
		}
	} 

	if (keyboard_check_pressed(vk_down)) {
		menuCursor--;
		if (menuCursor < 0) {
			menuCursor = menuItems - 1;
		}
	}
	
	if (keyboard_check_pressed(vk_enter)) {
		menuXTarget = guiWidth + 200;
		menuCommitted = menuCursor;
		menuControl = false;
	}
}

if ((menuX > guiWidth + 150) && (menuCommitted != -1)) {
	switch(menuCommitted) {
		case 2:
			SlideTransition(TRANS_MODE.NEXT);
			break;
		case 1:
			break;
		case 0:
			game_end();
			break;
		default:
			SlideTransition(TRANS_MODE.NEXT);
			break;
	}
}