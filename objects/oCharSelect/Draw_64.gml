// score

for (var i = 0; i < array_length(characters); ++i) {
	if (i != curSelected) draw_set_alpha(0.5);
	draw_set_font(global.font);
	
	yOffset[i] = lerp(yOffset[i], 170 * (curSelected - i), 0.1);
	xOffset[i] = lerp(xOffset[i], 16 * (curSelected - i), 0.1);
	draw_text(60 + xOffset[i], 150 + yOffset[i], characters[i]);
	
	draw_set_font(fntDefault);
	draw_set_alpha(1);
}

boyfriend_sprites();

var xscale;
if (flipped)
	xscale = -1;
else xscale = 1;
	
draw_sprite_ext(sprIdle, 0, 840, 620, xscale, 1, 0, c_white, 1);

draw_set_font(global.font);
draw_text(100, 620, "current: " + global.boyfriend);
draw_set_font(fntDefault);

draw_set_color(c_white);