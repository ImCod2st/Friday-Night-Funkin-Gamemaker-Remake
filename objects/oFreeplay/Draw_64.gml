for (var i = 0; i < array_length(songs); ++i) {
	if (i != curSelected) draw_set_color(c_ltgray);
	draw_set_font(global.font);
	
	yOffset[i] = lerp(yOffset[i], 150 * (curSelected - i), 0.1);
	xOffset[i] = lerp(xOffset[i], 20 * (curSelected - i), 0.1);
	draw_text(60 + xOffset[i], 300 + yOffset[i], songs[i]);
	
	draw_set_font(fntDefault);
	draw_set_color(c_white);
}