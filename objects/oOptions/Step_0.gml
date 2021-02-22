fullscreenOption = window_get_fullscreen();
smoothingOption = gpu_get_texfilter();
discord = instance_exists(rousrDissonance);

if (keyboard_check_pressed(vk_up)) && (curSelected > 0) curSelected--;
if (keyboard_check_pressed(vk_down)) && (curSelected < optionAmount - 1) curSelected++;

if (keyboard_check_pressed(vk_enter)) {
	switch (curSelected) {
		case 0:
			window_set_fullscreen(!fullscreenOption)
			break;
		case 1:
			gpu_set_texfilter(!smoothingOption)
			break;
	}
}
