songs[0] = "milf";
songs[1] = "high";
songs[2] = "satin_panties";

songs[3] = "blammed";
songs[4] = "philly";
songs[5] = "pico";

songs[6] = "monster";
songs[7] = "south";
songs[8] = "spookeez";

songs[9] = "dadbattle";
songs[10] = "fresh";
songs[11] = "bopeebo";

songs[12] = "tutorial";

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