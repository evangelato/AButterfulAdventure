if (variable_global_exists("prevToastId")) {
	with(global.prevToastId) {
		x = 32;
		y = 768;
		persistent = false;
	}
	
	with(obj_player) {
	x = 48;
	y = 512;
	}

	with(obj_camera) {
		x = 48;
		y = 512;
	}
} else {
	instance_create_layer(48, 512, "Player", obj_player);
	instance_create_layer(48, 512, "Player", obj_camera);
}
