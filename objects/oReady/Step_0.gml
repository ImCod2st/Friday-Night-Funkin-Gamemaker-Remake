image_alpha -= 0.04;
if (vidone){ 
	oReady.image_speed = (global.bpm / 60) / 30 * global.deltaMultiplier;
	audio_play_sound(oReady.snd3, 10, false);
	oGirlfriend.image_index = 0;
	oBoyfriend.image_index = 0;
	vidone = false;
} 
if (image_index >= 1) && (image_index < 1.2) {image_alpha = 1; if !(audio_is_playing(snd2)) audio_play_sound(snd2, 10, false);}
if (image_index >= 2) && (image_index < 2.2) {image_alpha = 1; if !(audio_is_playing(snd1)) audio_play_sound(snd1, 10, false);}
if (image_index >= 3) && (image_index < 3.2) {image_alpha = 1; if !(audio_is_playing(sndGo)) audio_play_sound(sndGo, 10, false);}
if (image_index >= 4) {
	audio_start_sync_group(global.musicSync);
	if (os_browser != browser_not_a_browser) {
		audio_play_sound(global.song, 100, false);
		audio_play_sound(global.voices, 100, false);
	}
	with (oNote) {
		noteSpeedAdd = (0.01*noteRangeDetermine)*global.accelnotes;
		curNoteSpeed = global.noteSpeed + noteSpeedAdd;
	}
	oBoyfriend.bpmTimer = 0;
	oGirlfriend.image_index = 0;
	instance_destroy();
}
