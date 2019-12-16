/// @description GUI/Vars/Manue setup
#macro SAVEFILE "Save.sav"

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth + 200;
menuY = guiHeight - guiMargin;
menuXTarget = guiWidth - guiMargin;
menuSpeed = 25; // Lower is faster
menuFont = font_menu;
menuItemHeight = font_get_size(font_menu);
menuCommitted = -1;
menuControl = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menuItems = array_length_1d(menu);
menuCursor = 2;
