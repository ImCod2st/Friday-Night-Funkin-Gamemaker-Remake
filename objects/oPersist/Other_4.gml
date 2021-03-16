// when a room starts and the musicSync still exists, destroy it to prevent lag
if (room = MainGame) exit;
if (variable_global_exists("musicSync")) audio_destroy_sync_group(global.musicSync);