x = 640;
y = 562;

dialog[0] = "no dialog set";
dialogChar[0] = ":dad:";
get_dialog();

spr = sDialogBox;
font = fntDefault;
if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) {
	spr = sDialogBoxPixel;
	font = fntDialogPixel;
}
index = 0;

curLetter = 0;
charSpriteOffset = 0;

curDialog = 0
lastDialogChar = "no";

finished = false;