if (changeTimer <= 0) {

	if (room != MainGame) {
		rousr_dissonance_set_details("Main Menu");
		rousr_dissonance_set_state("GMS2 Port / v" + string(GM_version));
		rousr_dissonance_set_large_image("bfandgf", "Girlfriend lol");
		rousr_dissonance_set_small_image("gms2logo", "GMS Port");
	} else {
		// 0 - gf, 1 - dad, 2 - spooky, 3 - monster, 4 - pico, 5 - mom
		if (global.enemy = 0) rousr_dissonance_set_large_image("gficon", "Girlfriend");
		if (global.enemy = 1) rousr_dissonance_set_large_image("dad", "Daddy Dearest");
		if (global.enemy = 2) rousr_dissonance_set_large_image("spooky", "Spooky Kids");
		if (global.enemy = 3) rousr_dissonance_set_large_image("monster", "??????");
		if (global.enemy = 4) rousr_dissonance_set_large_image("pico", "Pico");
		if (global.enemy = 5) rousr_dissonance_set_large_image("mom", "Mom");
		
		var difName = "Easy";
		if (global.currentDif = 1) difName = "Normal";
		if (global.currentDif  = 2) difName = "Hard";
		rousr_dissonance_set_details(global.songName + " on " + difName);
	
		var scor = string_format(global.curScore, 8, false);
		scor = string_replace_all(scor, " ", "0");
		rousr_dissonance_set_state(scor + " / x" + string(global.combo));	
	}
	changeTimer = 180;
	
} else {
	changeTimer--;	
}