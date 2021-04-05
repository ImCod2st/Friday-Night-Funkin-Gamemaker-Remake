x = 640;
y = 562;

dialog[0] = "no dialog set";
dialogChar[0] = ":dad:";
get_dialog();

spr = sDialogBox;
font = fntDefault;

color1 = c_black;
color2 = c_white;
shadow = false;
if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) {
	spr = sDialogBoxPixel;
	font = fntDialogPixel;
	
	if (global.enemy = 10) {
		spr = sDialogBoxPixelSpooky;
		color1 = c_white;
		shadow = false;
	} else {
		color1 = make_color_rgb(57, 28, 30);
		color2 = make_color_rgb(191, 122, 123);
		shadow = true;
	}
}
index = 0;

curLetter = 0;
charSpriteOffset = 0;

curDialog = 0
lastDialogChar = "no";

finished = false;