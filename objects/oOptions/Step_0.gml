fullscreenOption = window_get_fullscreen();
smoothingOption = gpu_get_texfilter();

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
			discord = !discord;
			
			ini_open("options.ini");
			ini_write_real("Options", "Discord", discord);
			ini_close();
			
			game_restart();
			break;
		case 5:
			instance_create_depth(0,0,-10000,oMapKeys);
			break;
	}
}

if (curSelected = 2) {
	if (keyboard_check_pressed(vk_right)) global.offset += 1;
	if (keyboard_check_pressed(vk_left)) global.offset -= 1;
}

if (curSelected = 5) {
//	if (keyboard_check_pressed(vk_right)) or (keyboard_check_pressed(vk_enter)) currentInput++;
//	if (keyboard_check_pressed(vk_left)) currentInput--;
//	if (currentInput > 1) currentInput = 0;
//	if (currentInput < 0) currentInput = array_length(currentInputString) - 1;
}
if (currentInput = 1) global.kadeInput = true; else global.kadeInput = false;

global.offset = clamp(global.offset, -60, 60);