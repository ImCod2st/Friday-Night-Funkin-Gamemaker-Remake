ini_open("options.ini");
if !(ini_read_real("Options", "Discord", true)) {
	instance_destroy();
	exit;	
}
ini_close();

// setup discord rich presence
rousr_dissonance_create("810748186117013514");
rousr_dissonance_set_details("Main Menu");
rousr_dissonance_set_state("Selecting a Song...");
rousr_dissonance_set_large_image("girlfriendcheer", "Girlfriend lol");
rousr_dissonance_set_small_image("gms2logo", "GMS Remake");
rousr_dissonance_set_timestamps(0);
changeTimer = 0;