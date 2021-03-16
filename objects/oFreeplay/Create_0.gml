load_freeplay(global.specialSongs);

curEnemy = 0;

difSelected = 1;
curSelected = array_length(songs) - 1;
lastSelected = -1;
timer = 20;

audio_stop_all();
musicFree = asset_get_index("Tutorial_Inst");
musicPlaying = audio_play_sound(real(musicFree), 10, true);

scorDisplay = 0;
visibleScore = 0;

yOffset = array_create(array_length(songs))
xOffset = array_create(array_length(songs))