// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_songscore(song, dif, scor){
	ini_open("playerdata.save");
	var difString = "Easy";
	if (dif = 1) difString = "Normal";
	if (dif = 2) difString = "Hard";
	ini_write_real(string_lower(song), difString, scor);
	ini_close();
}