if (keyboard_check_pressed(vk_down))
|| (keyboard_check_pressed(global.downKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_padd)) {
	curSelected -= 1;
	if (curSelected = -1) curSelected = array_length(songs) - 1;
	audio_play_sound(scrollMenu, 10, false);	
	
	iconYOffset = 10;
}
if (keyboard_check_pressed(vk_up))
|| (keyboard_check_pressed(global.upKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_padu)) {
	curSelected += 1;
	if (curSelected = array_length(songs)) curSelected = 0;
	audio_play_sound(scrollMenu, 10, false);
	
	iconYOffset = -10;
}

if (keyboard_check_pressed(vk_backspace))
|| (keyboard_check_pressed(global.backKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_face2)) {
	if (instance_exists(oFade)) exit;

	audio_play_sound(cancelMenu, 10, false);
	o = instance_create_depth(0, 0, -10000, oFade);
	o.roomTo = MainMenu;
}

if ((keyboard_check_pressed(vk_left)) 
|| (keyboard_check_pressed(global.leftKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_padl))) && (difSelected > 0) 
	difSelected--;
	
if ((keyboard_check_pressed(vk_right)) 
|| (keyboard_check_pressed(global.rightKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_padr))) && (difSelected < 2) 
	difSelected++;

if ((keyboard_check_pressed(vk_enter)) 
|| (keyboard_check_pressed(vk_space))
|| (keyboard_check_pressed(global.acceptKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_face1))
|| (gamepad_button_check_pressed(global.controller, gp_start)))  {
	if (difSelected != 2) && !(keyboard_check(vk_shift)) or (instance_exists(oFade)) exit;
	
	audio_play_sound(confirmMenu, 10, false);
	
	var songString = songs[curSelected];
	songString =  string_upper_first(songString);
	
	global.songOn = 0;
	global.currentDif = difSelected;
	global.freeplay = true;
	global.nextSong[0] = "n";
	load_chart(songString, global.currentDif);
	
	o = instance_create_depth(x, 0, -10000, oFade);
	o.roomTo = MainGame;
}

var songString = songs[curSelected];
var songNam = string_upper_first(songString); // get the songs name

ini_open("playerdata.save");
var difString = "Easy";
if (difSelected = 1) difString = "Normal";
if (difSelected = 2) difString = "Hard";
visibleScore = ini_read_real(songs[curSelected], difString, 0);
ini_close();

// song has changed
if (lastSelected != curSelected) {
	// get the selected songs directory
	var directory = songNam + "/" + songNam + "_Hard.ini";
	if (global.useProgramDir) directory = working_directory +"\\Songs\\" + directory;
	
	// load the selected songs data
	ini_open(directory);
	curEnemy = ini_read_real("Song", "Enemy", global.enemy);
	songString = ini_read_string("Song", "Song File", "Tutorial_Inst");
	ini_close();

	// play the songs music
	audio_stop_sound(musicPlaying);
	musicPlaying = audio_play_sound(asset_get_index(songString), 10, true);
}

if (keyboard_check_pressed(ord("V"))) {
	global.specialSongs = !global.specialSongs;
	global.bSides = false;
	room_restart();
}

lastSelected = curSelected;

// small animation variables
if (iconYOffset < 0) iconYOffset++;
if (iconYOffset > 0) iconYOffset--;