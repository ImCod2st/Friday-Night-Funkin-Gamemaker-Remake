if (instance_exists(oFade)) exit;

audio_stop_all();
audio_play_sound(cancelMenu, 10, false);
audio_play_sound(freakyMenu, 10, false);
o = instance_create_depth(0, 0, -10000, oFade);
o.roomTo = MainMenu;