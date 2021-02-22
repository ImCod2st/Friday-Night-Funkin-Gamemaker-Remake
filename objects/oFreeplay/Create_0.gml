songs[0] = "amog us";
songs[1] = "test5";
songs[2] = "test4";
songs[3] = "test3";
songs[4] = "test2";
songs[5] = "test";

songs[6] = "fresh";
songs[7] = "bopeebo";
songs[8] = "tutorial";

difSelected = 1;
curSelected = array_length(songs) - 1;
lastSelected = curSelected;
timer = 20;

audio_stop_all();
musicFree = asset_get_index("Tutorial_Inst");
musicPlaying = audio_play_sound(real(musicFree), 10, true);

scorDisplay = 0;
visibleScore = 0;

yOffset = array_create(array_length(songs))
xOffset = array_create(array_length(songs))