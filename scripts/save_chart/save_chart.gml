// this script is used to save a chart created using the editor
// to a ini file which can be loaded when needed using load_chart();
function save_chart(dif){
	// change the saved difficullty at the end of the file
	var difName = "_Easy";
	if (dif = 1) difName = "_Normal";
	if (dif = 2) difName = "_Hard";
	
	// choose the directory to save in depending on if the game is being run in the ide, or as a released build
	var directory = global.songName + "\\" + global.songName + difName + ".ini";
	if (global.useProgramDir) directory = working_directory + "\\Songs\\" + directory;
	
	// save all the songs data
	ini_open(directory);
	if (global.songName = "") {exit; ini_close();} // if there is no song name, give up on saving
	ini_write_string("Song", "Name", global.songName);
	
	ini_write_string("Song", "Song File", audio_get_name(global.song));
	if (global.voices = "") ini_write_string("Song", "Vocal File", ""); // if there are no vocals, save it as nothing
	else ini_write_string("Song", "Vocal File", audio_get_name(global.voices));
	
	ini_write_real("Song", "Notespeed", global.noteSpeed);
	ini_write_real("Song", "BPM", global.bpm);
	ini_write_real("Song", "Camspeed", global.camSpeed);
	ini_write_real("Song", "Enemy", global.enemy); 
	ini_write_string("Song", "Stage", global.stage);
	
	ini_write_string("Song", "Notes", ds_grid_write(global.chart));
	ini_close();
}