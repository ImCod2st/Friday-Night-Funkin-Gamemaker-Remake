x = 640;
y = 562;

spr = sDialogBox;
font = fntDefault;
if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) {
	spr = sDialogBoxPixel;
	font = fntDialogPixel;
}
index = 0;

curLetter = 0;

dialog[0] = "no dialog set";
dialogChar[0] = ":dad:";
get_dialog();

curDialog = 0;

finished = false;