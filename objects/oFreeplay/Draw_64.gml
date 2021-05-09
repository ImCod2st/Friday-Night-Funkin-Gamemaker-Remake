freeplay_ui();

for (var i = 0; i < array_length(songs); ++i) {
	if (i != curSelected) draw_set_alpha(0.5);
	draw_set_font(global.font);
	
	yOffset[i] = lerp(yOffset[i], 120 * (curSelected - i), 0.1);
	xOffset[i] = lerp(xOffset[i], 16 * (curSelected - i), 0.1);
	var songDisplay = songs[i];
	if (global.customFreeplay) songDisplay = string_copy(songs[i], 0, 13);
	draw_text(60 + xOffset[i], 300 + yOffset[i], songDisplay);
	
	// icon for custom
	if (global.customFreeplay) {
		enem = enemySong[i];
		enemyIconSpr = sIcons;
		bfIconSpr = sIcons;

		special_icons(enemySong[i]);
		
		var enemyIcon = (enem + 1) * 2;
		draw_sprite(enemyIconSpr, enemyIcon, 190 + xOffset[i] + string_width(songDisplay), 340 + yOffset[i]);
	}
	
	draw_set_font(fntDefault);
	draw_set_alpha(1);
}

if (global.specialSongs) {
	draw_text_ext(0, 0, "SPECIAL STAGES\n\nNOTE: THESE STAGES ARE NOT\nMAPPED VERY WELL.", 20, 10000);
}

draw_set_color(c_white);