if (fnfBotMode) room_restart();
fnfBotEnemy = false;
if (keyboard_check(vk_shift)) fnfBotEnemy = true;

fnfBotMode = true;
audio_sound_set_track_position(global.music, 0);
audio_resume_all();
dontDraw = true;