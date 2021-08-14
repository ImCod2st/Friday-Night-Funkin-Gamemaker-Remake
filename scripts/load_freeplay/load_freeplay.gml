// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_freeplay(special){
	if !(special) freeplay_songs();
	else freeplay_songs_special();
	
	var leng = array_length(song) - 1;
	for (var i = leng; i >= 0; --i) {
		// order the songs properly
		songO = abs(i - leng);
		songs[songO] = song[i]
		
		if (global.customFreeplay) {
			// get the selected songs directory
			var directory = songs[songO] + "/" + songs[songO] + "_Hard.ini";
			if (global.useProgramDir) directory = working_directory +"\\Songs\\" + directory;
		
			// load the selected songs data
			ini_open(directory);
			enemySong[songO] = ini_read_real("Song", "Enemy", global.enemy);
			ini_close();
		}
	}
}