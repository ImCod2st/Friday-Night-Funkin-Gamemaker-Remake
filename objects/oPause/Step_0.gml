/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_down)) && (curSelected > 0) {
	curSelected -= 1;
	audio_play_sound(scrollMenu, 10, false);	
}
if (keyboard_check_pressed(vk_up)) && (curSelected < array_length(menus) - 1) {
	curSelected += 1;
	audio_play_sound(scrollMenu, 10, false);
}

audio_pause_sync_group(global.musicSync);
if (keyboard_check_pressed(vk_enter)) {
	switch (curSelected) {
		case 2:
			if (timer = 0) instance_destroy();
			break;
		case 1:
			var o = instance_create_depth(0, 0, depth - 100, oFade);
			o.roomTo = MainGame;
			audio_destroy_sync_group(global.musicSync);
			break;
		case 0:
			var o = instance_create_depth(0, 0, depth - 100, oFade);
			o.roomTo = MainMenu;
			audio_destroy_sync_group(global.musicSync);
			audio_play_sound(freakyMenu, 10, true);
			break;
	}
}
if (timer > 0) timer--;