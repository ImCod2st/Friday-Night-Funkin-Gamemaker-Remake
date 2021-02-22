if (changeTimer <= 0) {

	if (room != MainGame) {
		rousr_dissonance_set_details("Main Menu");
		rousr_dissonance_set_state("Selecting a Song...");
		rousr_dissonance_set_large_image("girlfriendcheer", "Girlfriend lol");
		rousr_dissonance_set_small_image("gms2logo", "GMS Port");
	} else {
		if (global.enemy = 0) rousr_dissonance_set_large_image("girlfriendcheer", "Girlfriend");
		if (global.enemy = 1) rousr_dissonance_set_large_image("daddy", "Daddy Dearest");
	
		rousr_dissonance_set_details(global.songName);
	
		var scor = string_format(global.curScore, 8, false);
		scor = string_replace_all(scor, " ", "0");
		rousr_dissonance_set_state(scor + " / " + string(global.combo));	
	}
	changeTimer = 180;
	
} else {
	changeTimer--;	
}