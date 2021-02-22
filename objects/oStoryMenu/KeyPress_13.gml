if (selected) exit;

global.freeplay = false;
global.songOn = 0;
selected = true;
audio_play_sound(confirmMenu, 100, false);
bfAnimate = 0;
global.weekPlaying = selectedWeek;