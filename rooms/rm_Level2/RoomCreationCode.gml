if (variable_global_exists("prevToastId")) {
	with(global.prevToastId) {
		x = 1936;
		y = 768;
		persistent = false;
	}
	
	with(obj_player) {
	x = 1952;
	y = 704;
	}

	with(obj_camera) {
		x = 1952;
		y = 704;
	}
} else {
	instance_create_layer(1952, 704, "Player", obj_player);
	instance_create_layer(1952, 704, "Player", obj_camera);
}

