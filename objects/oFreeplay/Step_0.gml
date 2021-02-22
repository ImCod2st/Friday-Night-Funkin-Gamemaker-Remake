/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_down)) && (curSelected > 0) {
	curSelected -= 1;
	audio_play_sound(scrollMenu, 10, false);	
}
if (keyboard_check_pressed(vk_up)) && (curSelected < array_length(songs) - 1) {
	curSelected += 1;
	audio_play_sound(scrollMenu, 10, false);
}

if (keyboard_check_pressed(vk_left)) && (difSelected > 0) difSelected--;
if (keyboard_check_pressed(vk_right)) && (difSelected < 2) difSelected++;

if (keyboard_check_pressed(vk_enter)) {
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

ini_open("playerdata.save");
var difString = "Easy";
if (difSelected = 1) difString = "Normal";
if (difSelected = 2) difString = "Hard";
visibleScore = ini_read_real(songs[curSelected], difString, 0);
ini_close();

if (lastSelected != curSelected) {
	var songString = songs[curSelected];
	songString = string_upper_first(songString) + "_Inst";
	audio_stop_sound(musicPlaying);
	musicPlaying = audio_play_sound(asset_get_index(songString), 10, true);
}

lastSelected = curSelected;