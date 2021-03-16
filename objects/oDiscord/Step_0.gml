// when the change timer reaches 0, update the rich presence
if (changeTimer <= 0) {
	
	if (room != MainGame) {	// if you arent playing a song, set as the main menu
		rousr_dissonance_set_details("Main Menu");
		rousr_dissonance_set_state("GMS2 Remake / v" + string(GM_version));
		rousr_dissonance_set_large_image("bfandgf", "Girlfriend lol");
		rousr_dissonance_set_small_image("gms2logo", "GMS Remake");
	} else { // if you are playing a song, update with the song info
		
		// get the enemy
		// 0 - gf, 1 - dad, 2 - spooky, 3 - monster, 4 - pico, 5 - mom
		switch (global.enemy) {
			case 0: rousr_dissonance_set_large_image("gficon", "Girlfriend"); break;
			case 1: rousr_dissonance_set_large_image("dad", "Daddy Dearest"); break;
			case 2: rousr_dissonance_set_large_image("spooky", "Spooky Kids"); break;
			case 3: rousr_dissonance_set_large_image("monster", "??????"); break;
			case 4: rousr_dissonance_set_large_image("pico", "Pico"); break;
			case 5: rousr_dissonance_set_large_image("mom", "Mom"); break;
		
			// special enemys
			case 101: rousr_dissonance_set_large_image("whitty", "?"); break;
			case 102: rousr_dissonance_set_large_image("oxi", "?????????????"); break;
		}
		
		// get the songs dif
		var difName = "Easy";
		if (global.currentDif = 1) difName = "Normal";
		if (global.currentDif  = 2) difName = "Hard";
		rousr_dissonance_set_details(global.songName + " on " + difName);
		
		// get the players score
		var scor = string_format(global.curScore, 8, false);
		scor = string_replace_all(scor, " ", "0");
		rousr_dissonance_set_state(scor + " / x" + string(global.combo));	
	}
	// reset the change timer
	changeTimer = 180;
	
}
// lower the timer
changeTimer--;	