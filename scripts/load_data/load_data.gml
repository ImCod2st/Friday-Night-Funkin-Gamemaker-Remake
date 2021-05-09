// load the users scores / options
// usually run at the beginning of the game
function load_data(){
	ini_open("playerdata.save");
	// loop through each week and load all the weeks scores
	for (var i = 0; i <= global.weeks; ++i) {
		global.weekScoreEasy[i] = ini_read_real("Week" + string(i) + "Score", "Easy", 0);
		global.weekScoreNormal[i] = ini_read_real("Week" + string(i) + "Score", "Normal", 0);
		global.weekScoreHard[i] = ini_read_real("Week" + string(i) + "Score", "Hard", 0);
	}
	ini_close();
	
	// options
	ini_open("options.ini");
	
	window_set_fullscreen(ini_read_real("Options", "Fullscreen", false));
	global.advancedHud = ini_read_real("Options", "AdvancedHud", false);
	global.offset = ini_read_real("Options", "Offset", 0);
	global.downScroll = ini_read_real("Options", "Downscroll", false);
	
	global.particles = ini_read_real("Graphics", "Particles", true);
	gpu_set_texfilter(ini_read_real("Graphics", "Smoothing", true));
	global.customFreeplay = ini_read_real("Graphics", "CustomFreeplay", true);
		
	// keybinds
	global.leftKeybind = ini_read_real("Keybinds", "Left", 65);
	global.downKeybind = ini_read_real("Keybinds", "Down", 83);
	global.upKeybind = ini_read_real("Keybinds", "Up", 87);
	global.rightKeybind = ini_read_real("Keybinds", "Right", 68);
	
	global.acceptKeybind = ini_read_real("Keybinds", "Accept", 90);
	global.backKeybind = ini_read_real("Keybinds", "Back", 88);
	
	ini_close();
}