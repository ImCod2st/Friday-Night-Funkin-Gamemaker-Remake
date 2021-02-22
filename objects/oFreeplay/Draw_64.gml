// score
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(930, 0, 1280, 150, false);
draw_set_alpha(1);
draw_set_color(c_white);

draw_set_font(global.comboNumberFont);
draw_set_halign(fa_center);

scorDisplay = lerp(scorDisplay, visibleScore, 0.2);
draw_text_transformed(1110, 90, round(scorDisplay), 0.3, 0.3, 0);

draw_set_halign(fa_left);
draw_sprite(sDifs, difSelected, 1110, 46);

for (var i = 0; i < array_length(songs); ++i) {
	if (i != curSelected) draw_set_color(c_ltgray);
	draw_set_font(global.font);
	
	yOffset[i] = lerp(yOffset[i], 150 * (curSelected - i), 0.1);
	xOffset[i] = lerp(xOffset[i], 20 * (curSelected - i), 0.1);
	draw_text(60 + xOffset[i], 300 + yOffset[i], songs[i]);
	
	draw_set_font(fntDefault);
	draw_set_color(c_white);
}