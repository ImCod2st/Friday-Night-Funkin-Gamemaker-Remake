draw_set_color(c_black);
draw_set_alpha(0.5);

draw_rectangle(0, 0, 1280, 720, false);

draw_set_alpha(1);
draw_set_color(c_white);

for (var i = 0; i < array_length(menus); ++i) {
	if (i != curSelected) draw_set_color(c_ltgray);
	draw_set_font(global.font);
	
	yOffset[i] = lerp(yOffset[i], 150 * (curSelected - i), 0.1);
	xOffset[i] = lerp(xOffset[i], 20 * (curSelected - i), 0.1);
	draw_text(60 + xOffset[i], 300 + yOffset[i], menus[i]);
	
	draw_set_font(fntDefault);
	draw_set_color(c_white);
}