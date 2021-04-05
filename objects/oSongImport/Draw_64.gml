function updateOptions() {
	option[0] = "";
	option[1] = json_VoiceFile;
	option[2] = json_SongFile;
	option[3] = json_BPM;
	option[4] = json_NoteSpeed;
	option[5] = difName[json_Difficulty];
	option[6] = json_Enemy;
	option[7] = json_SongName;
	option[8] = "";	
}

for (var i = 0; i < array_length(options); ++i) {
	if (i != curSelected) draw_set_alpha(0.5);
	draw_set_font(global.font);
	
	yOffset[i] = lerp(yOffset[i], 130 * (curSelected - i), 0.1);
	xOffset[i] = lerp(xOffset[i], 16 * (curSelected - i), 0.1);
	draw_text(60 + xOffset[i], 300 + yOffset[i], options[i]);
	
	draw_set_halign(fa_right);
	
	updateOptions();
	if (i != 6) draw_text(1220 + xOffset[i], 300 + yOffset[i], string_lower(option[i]));
	else draw_sprite(sIcons, (json_Enemy + 1) * 2, 1200 + xOffset[i], 340 + yOffset[i]);
	
	draw_set_halign(fa_left);
	draw_set_font(fntDefault);
	draw_set_alpha(1);
}

draw_set_color(c_white);