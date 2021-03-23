// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function freeplay_songs_special() {
	// load the main songs, and the song file
	function load_song(songName, songNumber) {
		song[songNumber] = string_lower(songName);
		
		var songDir = working_directory + "Custom\\" + songName + "\\";
		ini_open(songDir + songName + "_Hard.ini");
		songFileInst[songNumber] = audio_create_stream(songDir + songName + "_Inst.ogg");
		ini_close();
	}
	
	var firstFile = file_find_first(working_directory + "Custom\\*", fa_directory);
	load_song(firstFile, 0);
	
	var lastFile = false;
	while (!lastFile) {
		var nextFile = file_find_next();
		
		if (nextFile != "") load_song(nextFile, array_length(song));
		else lastFile = true;
	}
}