// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jsontoini(){
	global.json_filename = get_open_filename("*.json", "");
	global.json_id = file_text_open_read(global.json_filename);
	global.json_contents = file_text_read_string(global.json_id);
	global.json_decoded = json_decode(global.json_contents)

	// global.notes -- 0-3 = enemy notes; 4-7 = player notes
	global.notes_output = ds_grid_create(8,16)
	global.notes = global.json_decoded[? "notes"]

	global.bpm = ds_list_find_value(global.notes, ds_list_size(global.notes) - 1)[? "bpm"]
	global.bps = global.bpm/60
	global.noteSpeed = global.bpm/20
	global.camSpeed = global.bpm * 2.6
	global.posCoefficient = global.noteSpeed * (100 / (global.camSpeed/48))
	global.pixelsToSeconds = global.noteSpeed * 120


	for (i = 0; i < ds_list_size(global.notes); i += 1){
		global.section_notes = ds_list_find_value(global.notes,i)[? "sectionNotes"]
		for (j = 0; j < ds_list_size(global.section_notes); j += 1){
			global.note = ds_list_find_value(global.section_notes,j)
			global.must_hit_section = ds_list_find_value(global.notes,i)[? "mustHitSection"]
		
			global.chartTime = ds_list_find_value(global.note, 0)
			global.noteType = ds_list_find_value(global.note, 1)
			global.noteDuration = ds_list_find_value(global.note, 2)
		
			global.calculatedPos = global.chartTime * global.pixelsToSeconds / 1000
			global.noteY = global.calculatedPos / global.posCoefficient
		
			if (global.must_hit_section){
				global.noteType = (global.noteType + 4) % 8
			}
		
			if (global.noteY >= ds_grid_height(global.notes_output)){
				ds_grid_resize(global.notes_output, 8, global.noteY + 1)
			}
			ds_grid_set(global.notes_output,global.noteType,global.noteY,1)
		}
	}
	
	setDirectory = get_save_filename("*.json", "");
	ini_open(setDirectory);
	ini_write_string("Song", "Notes", ds_grid_write(global.notes_output))
	ini_write_string("Song", "Enemy", get_integer("Enemy ID:", 0))
	ini_write_string("Song", "Camspeed", global.camSpeed)
	ini_write_string("Song", "BPM", global.bpm)
	ini_write_string("Song", "Notespeed", global.noteSpeed)
	ini_write_string("Song", "Vocal File", get_string("Voices File:", ""))
	ini_write_string("Song", "Song File", get_string("Song File:", ""))
	ini_write_string("Song", "Name", get_string("Name", ""))
	ini_close()
}