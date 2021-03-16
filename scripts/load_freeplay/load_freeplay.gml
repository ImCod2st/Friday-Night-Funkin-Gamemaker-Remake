// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_freeplay(special){
	if !(special) freeplay_songs();
	else freeplay_songs_special();
	
	var leng = array_length(song) - 1;
	for (var i = leng; i >= 0; --i) {
		songs[abs(i - leng)] = song[i]
	}
}