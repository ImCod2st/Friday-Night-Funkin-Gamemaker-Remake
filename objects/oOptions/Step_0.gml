fullscreenOption = window_get_fullscreen();
smoothingOption = gpu_get_texfilter();

if (keyboard_check_pressed(vk_up)) || (keyboard_check_pressed(global.upKeybind)) {if (curSelected > 0) curSelected--; audio_play_sound(scrollMenu, 0, false);}
if (keyboard_check_pressed(vk_down)) || (keyboard_check_pressed(global.downKeybind)) {if (curSelected < optionAmount[category]) curSelected++; audio_play_sound(scrollMenu, 0, false);}

if (keyboard_check_pressed(vk_enter)) || (keyboard_check_pressed(vk_space)) 
|| (keyboard_check_pressed(global.acceptKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_face1))
|| (gamepad_button_check_pressed(global.controller, gp_start)) 
or (keyboard_check_pressed(vk_left)) 
or (keyboard_check_pressed(vk_right)) {
	options_select(category, curSelected);
}

if (curSelected = 0) {
	if (keyboard_check_pressed(vk_left)) || (keyboard_check_pressed(global.leftKeybind)) {if (category > 0) category--; audio_play_sound(scrollMenu, 0, false);}
	if (keyboard_check_pressed(vk_right)) || (keyboard_check_pressed(global.rightKeybind)) {if (category < 2) category++; audio_play_sound(scrollMenu, 0, false);}
}

// offset add
if (category = 0) && (curSelected = 2) {
	var addBy = 1;
	if (keyboard_check(vk_shift)) addBy = 5;
	
	if (keyboard_check_pressed(vk_right))
	|| (keyboard_check_pressed(global.rightKeybind)) global.offset += addBy;
	
	if (keyboard_check_pressed(vk_left))
	|| (keyboard_check_pressed(global.leftKeybind)) global.offset -= addBy;
}

if (keyboard_check_pressed(vk_backspace))
|| (keyboard_check_pressed(global.backKeybind))
{
	if (instance_exists(oFade)) exit;

	save_options();

	audio_play_sound(cancelMenu, 10, false);
	o = instance_create_depth(0, 0, -10000, oFade);
	o.roomTo = MainMenu;	
}

global.offset = clamp(global.offset, -120, 120);