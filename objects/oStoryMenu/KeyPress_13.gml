if (selected) exit;
if (global.currentDif != 2) && !(keyboard_check(vk_shift)) exit; // TEMP BECAUSE I HAVE YET TO FINISH THE OTHER DIFS

global.freeplay = false;
global.songOn = 0;
selected = true;
audio_play_sound(confirmMenu, 100, false);
bfAnimate = 0;
global.weekPlaying = selectedWeek;