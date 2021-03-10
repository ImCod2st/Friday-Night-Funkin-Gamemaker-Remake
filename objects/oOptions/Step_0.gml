fullscreenOption = window_get_fullscreen();
smoothingOption = gpu_get_texfilter();
discord = instance_exists(rousrDissonance);

if (keyboard_check_pressed(vk_up)) && (curSelected > 0) curSelected--;
if (keyboard_check_pressed(vk_down)) && (curSelected < optionAmount - 1) curSelected++;

if (keyboard_check_pressed(vk_enter)) or (keyboard_check_pressed(vk_left)) or (keyboard_check_pressed(vk_right)) {
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
	}
}

if (curSelected = 2) {
	if (keyboard_check_pressed(vk_right)) global.offset += 1;
	if (keyboard_check_pressed(vk_left)) global.offset -= 1;
}

global.offset = clamp(global.offset, -60, 60);