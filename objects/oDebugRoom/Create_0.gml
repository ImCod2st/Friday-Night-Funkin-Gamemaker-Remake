audio_stop_all();

var songToPlay = global.voices;
if (global.voices = "") songToPlay = global.song;
global.music = audio_play_sound(songToPlay, 10, true);

dif = global.currentDif;