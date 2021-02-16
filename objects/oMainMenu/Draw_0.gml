//background
draw_sprite_ext(sBackgroundFunk, round(bgFlash), 640, 360 + yBgOff, 1.05, 1.05, 0, c_white, 1);

var spr = sStoryMode;
if (menuSelected = 0) spr = sStoryModeSelect;
draw_sprite_ext(spr, image_index, x, y, 1, 1, 0, c_white, round(textFlash[0]));

var spr = sFreeplay;
if (menuSelected = 1) spr = sFreeplaySelect;
draw_sprite_ext(spr, image_index, x, y + 160, 1, 1, 0, c_white, round(textFlash[1]));

var spr = sDonate;
if (menuSelected = 2) {
	spr = sDonateSelect;
	
	draw_set_halign(fa_center);
	draw_set_font(global.font);
	draw_text_ext_transformed(x, 551, "donate to the original creators, they\ncan use all the support to make this game\nthe best version of itself.", 80, 100000, 0.5, 0.5, 0);
	draw_set_font(fntDefault);
	draw_set_halign(fa_left);
}
draw_sprite_ext(spr, image_index, x, y + (160 * 2), 1, 1, 0, c_white, round(textFlash[2]));
