// when pressing down, move the selected item down
if ((keyboard_check_pressed(vk_down)) || (gamepad_button_check_pressed(global.controller, gp_padd))) {
	if (curSelected > 0) curSelected -= 1;
	else curSelected = array_length(menus) - 1;
	
	audio_play_sound(scrollMenu, 10, false);	
}
// when pressing up, move the selected item up
if ((keyboard_check_pressed(vk_up)) || (gamepad_button_check_pressed(global.controller, gp_padu))) {
	if (curSelected < array_length(menus) - 1) curSelected += 1;
	else curSelected = 0;
	
	audio_play_sound(scrollMenu, 10, false);
}

//when enter is pressed run the code for which is selected
if ((keyboard_check_pressed(vk_enter)) 
|| (keyboard_check_pressed(vk_space))
|| (gamepad_button_check_pressed(global.controller, gp_face1))
|| (gamepad_button_check_pressed(global.controller, gp_start))) {
	switch (curSelected) {
		case 2:
			// if resume is selected, destroy self
			if (timer = 0) instance_destroy();
			break;
		case 1:
			// if restart is selected. go to the same room
			var o = instance_create_depth(0, 0, depth - 100, oFade);
			o.roomTo = MainGame;
			audio_destroy_sync_group(global.musicSync);
			timer = 300;
			break;
		case 0:
			// if exit to main menu is selected, go to the main menu
			if (timer > 0) exit;
			var o = instance_create_depth(0, 0, depth - 100, oFade);
			o.roomTo = MainMenu;
			audio_destroy_sync_group(global.musicSync);
			audio_play_sound(freakyMenu, 10, true);
			timer = 300;
			break;
	}
}
// if the timer is greater than 0, subtract from the timer
if (timer > 0) timer--;