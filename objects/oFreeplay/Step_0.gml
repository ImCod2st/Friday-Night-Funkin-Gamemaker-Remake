if (keyboard_check_pressed(vk_down)) {
	curSelected -= 1;
	if (curSelected = -1) curSelected = array_length(songs) - 1;
	audio_play_sound(scrollMenu, 10, false);	
}
if (keyboard_check_pressed(vk_up)) {
	curSelected += 1;
	if (curSelected = array_length(songs)) curSelected = 0;
	audio_play_sound(scrollMenu, 10, false);
}

if (keyboard_check_pressed(vk_left)) && (difSelected > 0) difSelected--;
if (keyboard_check_pressed(vk_right)) && (difSelected < 2) difSelected++;

if (keyboard_check_pressed(vk_enter)) {
	if (difSelected != 2) && !(keyboard_check(vk_shift)) exit;
	
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

if (lastSelected != curSelected) {
	// get the selected songs directory
	var directory = songNam + "/" + songNam + "_Hard.ini";
	if (global.useProgramDir) directory = program_directory + songNam + "\\" + songNam + "_Hard.ini";
	
	// load the selected songs data
	ini_open(directory);
	curEnemy = ini_read_real("Song", "Enemy", global.enemy);
	ini_close();

	// play the songs music
	songString = songNam + "_Inst";
	audio_stop_sound(musicPlaying);
	musicPlaying = audio_play_sound(asset_get_index(songString), 10, true);
}

if (keyboard_check_pressed(ord("S"))) {
	global.specialSongs = !global.specialSongs;
	room_restart();
}

lastSelected = curSelected;