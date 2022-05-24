// this script is used to load a chart created using the editor
function load_chart(songNam, dif){
	// change the saved difficullty at the end of the file
	var difName = "_Easy";
	if (dif = 1) difName = "_Normal";
	if (dif = 2) difName = "_Hard";
	
	// choose the directory to load in depending on if the game is being run in the ide, or as a released build
	var directory = "\\Songs\\" + songNam + "\\" + songNam + difName + ".ini";
	if (global.specialSongs) directory = "\\Custom" + directory;
	directory = working_directory + directory;
	
	// load all of the songs data
	ini_open(directory);
	if (songNam = "") {exit; ini_close();} // if the song being loaded's name is "", then give up on loading the file
	global.songName = ini_read_string("Song", "Name", global.songName);
	global.song = asset_get_index(ini_read_string("Song", "Song File", "Dadbattle_Inst"));
	global.voices = ini_read_string("Song", "Vocal File", "Dadbattle_Voices");
	if (global.voices != "") global.voices = asset_get_index(global.voices);
	
	global.noteSpeed = ini_read_real("Song", "Notespeed", global.noteSpeed);
	global.bpm = ini_read_real("Song", "BPM", global.bpm);
	global.camSpeed = ini_read_real("Song", "Camspeed", global.camSpeed);
	global.enemy = ini_read_real("Song", "Enemy", global.enemy); 
	global.stage = ini_read_string("Song", "Stage", global.stage);
	
	ds_grid_read(global.chart, ini_read_string("Song", "Notes", ds_grid_create(8, 16)));
	ini_close();
}