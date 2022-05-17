// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_options(){
	ini_open("options.ini");
	
	ini_write_real("Options", "Fullscreen", window_get_fullscreen());
	ini_write_real("Options", "AdvancedHud", global.advancedHud);
	ini_write_real("Options", "Offset", global.offset);
	ini_write_real("Options", "Downscroll", global.downScroll);
	
	ini_write_real("Graphics", "Smoothing", gpu_get_texfilter());
	ini_write_real("Graphics", "Particles", global.particles);
	ini_write_real("Graphics", "CustomFreeplay", global.customFreeplay); 
	ini_write_real("Graphics", "Preload", global.preload);
	
	ini_write_real("Keybinds", "Left", global.leftKeybind);
	ini_write_real("Keybinds", "Down", global.downKeybind);
	ini_write_real("Keybinds", "Up", global.upKeybind);
	ini_write_real("Keybinds", "Right", global.rightKeybind);
	
	ini_write_real("Keybinds", "Accept", global.acceptKeybind);
	ini_write_real("Keybinds", "Back", global.backKeybind);
	
	ini_close();
}