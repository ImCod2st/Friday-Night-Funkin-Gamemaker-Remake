// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function load_chart(songNam, dif){
	var difName = "_Easy";
	if (dif = 1) difName = "_Normal";
	if (dif = 2) difName = "_Hard";
	
	var directory = songNam + "/" + songNam + difName + ".ini";
	if (global.useProgramDir) directory = program_directory + songNam + "\\" + directory;
	
	ini_open(directory);
	if (songNam = "") exit;
	global.songName = ini_read_string("Song", "Name", global.songName);
	global.song = asset_get_index(ini_read_string("Song", "Song File", "Dadbattle_Inst"));
	global.voices = ini_read_string("Song", "Vocal File", "Dadbattle_Voices");
	if (global.voices != "") global.voices = asset_get_index(global.voices);
	
	global.noteSpeed = ini_read_real("Song", "Notespeed", global.noteSpeed);
	global.bpm = ini_read_real("Song", "BPM", global.bpm);
	global.camSpeed = ini_read_real("Song", "Camspeed", global.camSpeed);
	global.enemy = ini_read_real("Song", "Enemy", global.enemy);
	
	ds_grid_read(global.chart, ini_read_string("Song", "Notes", ds_grid_create(8, 16)));
	ini_close();
}