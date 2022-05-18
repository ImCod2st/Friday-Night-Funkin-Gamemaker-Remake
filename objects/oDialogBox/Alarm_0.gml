instance_destroy();

oReady.image_speed = (global.bpm / 60) / 30 * global.deltaMultiplier;
audio_play_sound(oReady.snd3, 10, false);
oGirlfriend.image_index = 0;
oBoyfriend.image_index = 0; 