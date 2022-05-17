// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function options_select(category, option){
	// options
	if (category = 0) {
		switch (option) {
			case 1: // fullscreen
				window_set_fullscreen(!fullscreenOption)
				audio_play_sound(confirmMenu, 0, false);
				break;
			case 3: // hud
				global.advancedHud = !global.advancedHud;
				audio_play_sound(confirmMenu, 0, false);
				break;
			case 4: // discord
				discord = !discord;
			
				ini_open("options.ini");
				ini_write_real("Options", "Discord", discord);
				ini_close();
			
				game_restart();
				break;
			case 5: // downscroll
				global.downScroll = !global.downScroll;
				audio_play_sound(confirmMenu, 0, false);
				break;
		}
	// graphics
	} else if (category = 1) {
		switch (option) {
			case 1: // smoothing
				gpu_set_texfilter(!smoothingOption)
				audio_play_sound(confirmMenu, 0, false);
				break;
			case 2: // particles
				global.particles = !global.particles;
				audio_play_sound(confirmMenu, 0, false);
				break; 
			case 3: // particles
				global.customFreeplay = !global.customFreeplay;
				audio_play_sound(confirmMenu, 0, false);
				break; 
			case 4: 
				global.preload = !global.preload; 
				audio_play_sound(confirmMenu, 0, false);
				break; 
		}
	// keybinds
	} else if (category = 2) {
		if (option = 0) exit;
		audio_play_sound(confirmMenu, 0, false);
		
		var changeKey = "left"; var globalToChange = "leftKeybind";
		if (option = 2) {changeKey = "down"; globalToChange = "downKeybind";}
		if (option = 3) {changeKey = "up"; globalToChange = "upKeybind";}
		if (option = 4) {changeKey = "right"; globalToChange = "rightKeybind";}
		
		if (option = 5) {changeKey = "accept"; globalToChange = "acceptKeybind";}
		if (option = 6) {changeKey = "back"; globalToChange = "backKeybind";}
		
		var o = instance_create_depth(x, y, -1000, oMapKey);
		o.keyString = changeKey;
		o.globalString = globalToChange;
	}
}