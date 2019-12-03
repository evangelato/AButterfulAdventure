/// @description Set up Camera
// You can write your code in this editor
cam = view_camera[0];
follow = obj_player;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
if (layer_exists("Background_1")){
	backgroundLayer1 = layer_get_id("Background_1");
}

if (layer_exists("Background_2")) {
	backgroundLayer2 = layer_get_id("Background_2");
}

if (layer_exists("Background_3")) {
	backgroundLayer3 = layer_get_id("Background_3");
}