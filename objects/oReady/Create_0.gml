image_speed = (global.bpm / 60) / 30;

audio_stop_all();
audio_play_sound(intro3, 10, false);

global.dead = false;
global.turn = 1;
global.musicSync = audio_create_sync_group(false);
audio_play_in_sync_group(global.musicSync, global.song);
if (global.voices != "") audio_play_in_sync_group(global.musicSync, global.voices);

xDif = x - camera_get_view_x(view_camera[0]);
yDif = y - camera_get_view_y(view_camera[0]);