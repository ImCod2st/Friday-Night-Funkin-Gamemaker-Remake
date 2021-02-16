image_alpha -= 0.04;

if (image_index = 1) {image_alpha = 1.5; audio_play_sound(intro2, 10, false);}
if (image_index = 2) {image_alpha = 1.5; audio_play_sound(intro1, 10, false);}
if (image_index = 3) {image_alpha = 1.5; audio_play_sound(introGo, 10, false);}
if (image_index >= 4) {
	audio_start_sync_group(global.musicSync);
	with (oNote) curNoteSpeed = global.noteSpeed;
	instance_destroy();
}