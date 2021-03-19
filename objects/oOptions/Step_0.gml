fullscreenOption = window_get_fullscreen();
smoothingOption = gpu_get_texfilter();
discord = instance_exists(rousrDissonance);

if (keyboard_check_pressed(vk_up)) && (curSelected > 0) curSelected--;
if (keyboard_check_pressed(vk_down)) && (curSelected < optionAmount - 1) curSelected++;

if (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(vk_space)) 
|| (gamepad_button_check_pressed(global.controller, gp_face1))
|| (gamepad_button_check_pressed(global.controller, gp_start)) 
or (keyboard_check_pressed(vk_left)) 
or (keyboard_check_pressed(vk_right)) {
	switch (curSelected) {
		case 0:
			window_set_fullscreen(!fullscreenOption)
			break;
		case 1:
			gpu_set_texfilter(!smoothingOption)
			break;
		case 3:
			global.advancedHud = !global.advancedHud;
			break;
		case 4:
			instance_create_depth(0,0,-10000,oMapKeys);
			break;
	}
}

if (curSelected = 2) {
	if (keyboard_check_pressed(vk_right)) global.offset += 1;
	if (keyboard_check_pressed(vk_left)) global.offset -= 1;
}

global.offset = clamp(global.offset, -60, 60);