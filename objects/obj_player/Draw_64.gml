/// @description Insert description here
// You can write your code in this editor
draw_healthbar(160, 32, 896, 64, health, c_black, c_white, c_yellow, 0, true, false);
draw_set_color(c_yellow);
draw_text(160, 10, "Butter Level: " + string(health));