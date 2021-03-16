// save an individual songs score
function save_songscore(song, dif, scor){
	ini_open("playerdata.save");
	// decide what dif to save as depending on the "dif" variable
	var difString = "Easy";
	if (dif = 1) difString = "Normal";
	if (dif = 2) difString = "Hard";
	ini_write_real(string_lower(song), difString, scor);
	ini_close();
}