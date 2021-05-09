// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function options_select(category, option){
	// options
	if (category = 0) {
		switch (option) {
			case 1: // fullscreen
				window_set_fullscreen(!fullscreenOption)
				break;
			case 2: // smoothing
				gpu_set_texfilter(!smoothingOption)
				break;
			case 4: // hud
				global.advancedHud = !global.advancedHud;
				break;
			case 5: // discord
				discord = !discord;
			
				ini_open("options.ini");
				ini_write_real("Options", "Discord", discord);
				ini_close();
			
				game_restart();
				break;
			case 6:
				global.particles = !global.particles;
				break;
		}
	} else {
		if (option = 0) exit;
		
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