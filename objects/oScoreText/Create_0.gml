vsp = -2;
grav = 0.08;

if (global.combo >= 100) sprite_index = sScoreTextGold;
comboOffset = random_range(-30, 30)
comboString = string_format(global.combo + 1, 3, false);
comboString = string_replace_all(comboString, " ", "0");

comboFont = global.comboNumberFont;
if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) {
	sprite_index = sScoreTextPixel;
	if (global.combo >= 100) sprite_index = sScoreTextPixelGold;
	comboFont = global.comboNumberFontPixel;
}

image_xscale = 0.7;
image_yscale = 0.7;
image_speed = 0;