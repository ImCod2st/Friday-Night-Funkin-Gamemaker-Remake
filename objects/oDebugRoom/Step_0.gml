var curTrackPos = audio_sound_get_track_position(global.music);

if (keyboard_check_pressed(vk_space)) {
	if (audio_is_paused(global.music)) {
		audio_resume_all();
	} else {
		audio_pause_all();
	}
}