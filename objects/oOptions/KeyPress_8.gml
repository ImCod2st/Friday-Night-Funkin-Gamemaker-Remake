if (instance_exists(oFade)) exit;

ini_open("options.ini");
ini_write_real("Options", "Fullscreen", window_get_fullscreen());
ini_write_real("Options", "Smoothing", gpu_get_texfilter());
ini_write_real("Options", "AdvancedHud", global.advancedHud);
ini_close();

audio_play_sound(cancelMenu, 10, false);
o = instance_create_depth(0, 0, -10000, oFade);
o.roomTo = MainMenu;