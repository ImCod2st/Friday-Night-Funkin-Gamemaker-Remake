if ((keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(global.downKeybind)) || (gamepad_button_check_pressed(global.controller, gp_padd))) {
	curSelected -= 1;
	if (curSelected = -1) curSelected = array_length(characters) - 1;
	audio_play_sound(scrollMenu, 10, false);	
}
if ((keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(global.upKeybind)) || (gamepad_button_check_pressed(global.controller, gp_padu))) {
	curSelected += 1;
	if (curSelected = array_length(characters)) curSelected = 0;
	audio_play_sound(scrollMenu, 10, false);
}

if (keyboard_check_pressed(vk_backspace)) 
|| (keyboard_check_pressed(global.backKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_face2)) {
	if (instance_exists(oFade)) 
		exit;

	audio_stop_all();
	audio_play_sound(cancelMenu, 10, false);
	audio_play_sound(freakyMenu, 10, false);
	o = instance_create_depth(0, 0, -10000, oFade);
	o.roomTo = global.roomBefore;
}

if ((keyboard_check_pressed(vk_enter)) 
|| (keyboard_check_pressed(vk_space))
|| (keyboard_check_pressed(global.acceptKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_face1))
|| (gamepad_button_check_pressed(global.controller, gp_start)))  {
	audio_play_sound(confirmMenu, 10, false);
	global.boyfriend = characters[curSelected];
}


if (lastSelected != curSelected) {
	// change the sprite
}

lastSelected = curSelected;