if ((keyboard_check_pressed(vk_down)) || (gamepad_button_check_pressed(global.controller, gp_padd))) {
	curSelected -= 1;
	if (curSelected = -1) curSelected = array_length(options) - 1;
	audio_play_sound(scrollMenu, 10, false);	
}
if ((keyboard_check_pressed(vk_up)) || (gamepad_button_check_pressed(global.controller, gp_padu))) {
	curSelected += 1;
	if (curSelected = array_length(options)) curSelected = 0;
	audio_play_sound(scrollMenu, 10, false);
}

if (keyboard_check_pressed(vk_backspace)) 
|| (gamepad_button_check_pressed(global.controller, gp_face2)) {
	if (instance_exists(oFade)) 
		exit;

	audio_stop_all();
	audio_play_sound(cancelMenu, 10, false);
	audio_play_sound(freakyMenu, 10, false);
	room_goto(MainMenu);
}

if ((keyboard_check_pressed(vk_enter)) 
|| (keyboard_check_pressed(vk_space))
|| (keyboard_check_pressed(vk_left))
|| (keyboard_check_pressed(vk_right))
|| (gamepad_button_check_pressed(global.controller, gp_face1))
|| (gamepad_button_check_pressed(global.controller, gp_start)))  {
	audio_play_sound(confirmMenu, 10, false);
	switch (curSelected) {
		case 8:
			// open song
			jsontoini();
			
			audio_stop_all();
			audio_play_sound(asset_get_index(json_SongFile), 10, true);
			break;
		case 7:
			json_SongName = get_string("Song Name:", "");
			json_SongFile = json_SongName + "_Inst";
			json_VoiceFile = json_SongName + "_Voices";
			
			audio_stop_all();
			audio_play_sound(asset_get_index(json_SongFile), 10, true);
			break;
		case 6:
			json_Enemy = get_integer("Enemy ID:", "");
			break;
		case 5:
			json_Difficulty++;
			if (json_Difficulty > 2) json_Difficulty = 0;
			break;
		case 4:
			json_NoteSpeed = get_integer("Notespeed:", "");
			break;
		case 3:
			json_BPM = get_integer("BPM:", "");
			break;
		case 0:
			var selectedDir = get_save_filename_ext("GMS2 Song Data|*.ini", json_SongName + "_" + difName[json_Difficulty], working_directory, "Select a place to save the GMS2 Song File")
			
			ini_open(selectedDir)
			ini_write_string("Song", "Notes", json_NoteOutput)
			ini_write_string("Song", "Enemy", json_Enemy)
			ini_write_string("Song", "Camspeed", json_CamSpeed)
			ini_write_string("Song", "BPM", json_BPM)
			ini_write_string("Song", "Notespeed", json_NoteSpeed)
			ini_write_string("Song", "Vocal File", json_VoiceFile)
			ini_write_string("Song", "Song File", json_SongFile)
			ini_write_string("Song", "Name", json_SongName)
			ini_close()
			break;
	}
}