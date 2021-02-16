// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_chart(dif){
	var difName = "_Easy";
	if (dif = 1) difName = "_Normal";
	if (dif = 2) difName = "_Hard";
	
	ini_open(global.songName + difName + ".ini");
	if (global.songName = "") exit;
	ini_write_string("Song", "Name", global.songName);
	
	ini_write_string("Song", "Song File", audio_get_name(global.song));
	if (global.voices = "") ini_write_string("Song", "Vocal File", "");
	else ini_write_string("Song", "Vocal File", audio_get_name(global.voices));
	
	ini_write_real("Song", "Notespeed", global.noteSpeed);
	ini_write_real("Song", "BPM", global.bpm);
	ini_write_real("Song", "Enemy", global.enemy);
	
	ini_write_string("Song", "Notes", ds_grid_write(global.chart));
	ini_close();
}