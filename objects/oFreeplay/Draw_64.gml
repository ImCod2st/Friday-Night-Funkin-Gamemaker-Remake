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

draw_sprite(sDifs, difSelected, 1110, 46);
if (difSelected != 2) draw_sprite(sDifsLock, 0, 1110, 46);  // TEMP BECAUSE I HAVE YET TO FINISH THE OTHER DIFS

draw_set_halign(fa_left);

// enemy icons
enem = curEnemy;
bf = 0;
iconSpr = sIcons;

special_icons(curEnemy);

var enemyIcon = (enem + 1) * 2;
var bfIcon = bf * 2;
draw_sprite(iconSpr, enemyIcon, 1070, 220);
draw_sprite_ext(iconSpr, bfIcon, 1130, 220, -1, 1, 0, c_white, 1);

for (var i = 0; i < array_length(songs); ++i) {
	if (i != curSelected) draw_set_alpha(0.5);
	draw_set_font(global.font);
	
	yOffset[i] = lerp(yOffset[i], 170 * (curSelected - i), 0.1);
	xOffset[i] = lerp(xOffset[i], 16 * (curSelected - i), 0.1);
	draw_text(60 + xOffset[i], 300 + yOffset[i], songs[i]);
	
	draw_set_font(fntDefault);
	draw_set_alpha(1);
}

if (global.specialSongs) {
	draw_text_ext(0, 0, "SPECIAL STAGES\n\nNOTE: THESE STAGES ARE NOT\nMAPPED VERY WELL.", 20, 10000);
}

draw_set_color(c_white);