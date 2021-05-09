// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function jsontoini(){
	var json_filename = get_open_filename_ext("FNF Song Data|*.json", "", "", "Select a FNF Song File");
	if (json_filename = "") exit;
	var json_id = file_text_open_read(json_filename);
	var json_contents = file_text_read_string(json_id);
	
	var newFile = show_question("Is this a newer song file?");
	
	while (!file_text_eof(json_id)) {
		var curLine = file_text_readln(json_id);
		curLine = string_replace_all(curLine, "#", "");
		json_contents += curLine;
	}
	
	show_debug_message(json_contents);
	var json_decoded = json_decode(json_contents);

	// global.notes -- 0-3 = enemy notes; 4-7 = player notes
	var notes_output = ds_grid_create(8,16)
	var songJson = json_decoded[? "song"]
	var notes = songJson[? "notes"]
	
	if !(newFile) var bpm = ds_list_find_value(songMain, ds_list_size(notes) - 1)[? "bpm"];
	else var bpm = songJson[? "bpm"];
	var bps = bpm/60
	var noteSpeed = bpm/20
	var camSpeed = bpm * 2.6
	var posCoefficient = noteSpeed * (100 / (camSpeed/48))
	var pixelsToSeconds = noteSpeed * 120
	
	var lastSection = 1;

	for (i = 0; i < ds_list_size(notes); i += 1){
		var section_notes = ds_list_find_value(notes,i)[? "sectionNotes"]
		for (j = 0; j < ds_list_size(section_notes); j += 1){
			var note = ds_list_find_value(section_notes,j)
			var must_hit_section = ds_list_find_value(notes,i)[? "mustHitSection"]
		
			var chartTime = ds_list_find_value(note, 0)
			var noteType = ds_list_find_value(note, 1)
			var noteDuration = ds_list_find_value(note, 2) / 14.151;
			if (noteDuration > 1) noteDuration -= 1;
		
			var calculatedPos = chartTime * pixelsToSeconds / 1000
			var noteY = calculatedPos / posCoefficient
		
			if (must_hit_section){
				noteType = (noteType + 4) % 8
			}
		
			if (noteY >= ds_grid_height(notes_output)){
				ds_grid_resize(notes_output, 8, noteY + 1)
			}
			
			// create cam notes
			if (lastSection != must_hit_section) {
				place_camera(notes_output, noteType, noteY);
			}
			lastSection = must_hit_section;
			ds_grid_set(notes_output,noteType,noteY,1 + noteDuration)
		}
	}
	var trueSongName = string_copy(json_filename, string_last_pos("\\", json_filename) + 1, string_length(json_filename));
	trueSongName = string_copy(trueSongName, 0, string_last_pos(".", trueSongName) - 1);
	if (string_pos("-", trueSongName)) trueSongName = string_copy(trueSongName, 0, string_last_pos("-", trueSongName) - 1);
	trueSongName = string_replace_all(trueSongName, "-", "_");
	trueSongName = string_upper_first(string_lower(trueSongName));
	
	var trueDif = string_copy(json_filename, string_last_pos("-", json_filename) + 1, string_length(json_filename));

	json_SongName = trueSongName;
	json_SongFile = json_SongName + "_Inst";
	json_VoiceFile = json_SongName + "_Voices";
	
	if (trueDif = "easy.json") json_Difficulty = 0;
	else if (trueDif = "hard.json") json_Difficulty = 2;
	else json_Difficulty = 1;
	
	json_NoteOutput = ds_grid_write(notes_output);
	json_CamSpeed = camSpeed;
	json_BPM = bpm;
	json_NoteSpeed = noteSpeed;
}