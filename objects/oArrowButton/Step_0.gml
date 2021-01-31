if (keyboard_check_pressed(key)) {
	image_speed = 1;
	image_index = 0;
}

if (keyboard_check(key)) && (image_index >= 1) {
	image_index = 1;
}