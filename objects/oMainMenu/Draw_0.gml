//background
draw_sprite_ext(sBackgroundFunk, round(bgFlash), 640, 360 + yBgOff, 1.05, 1.05, 0, c_white, 1);

var spr = sStoryMode;
if (menuSelected = 0) spr = sStoryModeSelect;
draw_sprite_ext(spr, image_index, x, y, 1, 1, 0, c_white, round(textFlash[0]));

var spr = sFreeplay;
if (menuSelected = 1) spr = sFreeplaySelect;
draw_sprite_ext(spr, image_index, x, y + 160, 1, 1, 0, c_white, round(textFlash[1]));

var spr = sOptions;
if (menuSelected = 2) spr = sOptionsSelect;
draw_sprite_ext(spr, image_index, x, y + (160 * 2), 1, 1, 0, c_white, round(textFlash[2]));

var spr = sDonate;
if (menuSelected = 3) spr = sDonateSelect;
draw_sprite_ext(spr, image_index, x, y + (160 * 3), 1, 1, 0, c_white, round(textFlash[3]));