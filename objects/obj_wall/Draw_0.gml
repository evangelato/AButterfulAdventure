/// @description Insert description here
if (hasButterTop) {
	draw_sprite(spr_butter_floor, image_index, x, y);
}

if (hasButterBottom) {
	draw_sprite(spr_butter_floor, image_index, x, y + 12);
}

if (hasButterRight) {
	draw_sprite(spr_butter_wall, image_index, x + 12, y);
}

if (hasButterLeft) {
	draw_sprite(spr_butter_wall, image_index, x, y);
}