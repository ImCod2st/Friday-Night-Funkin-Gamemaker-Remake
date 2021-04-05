if (instance_exists(oFade)) exit;
if (instance_exists(oCutscene)) exit;
if (index < 6) index += 0.1;

if (lastDialogChar != dialogChar[curDialog]) {
	charSpriteOffset = -60;
	show_debug_message(dialogChar[curDialog]);
	if (dialogChar[curDialog] = ":bf:") or (dialogChar[curDialog] = ":bfpixel:") charSpriteOffset = 60;
}

charSpriteOffset = lerp(charSpriteOffset, 0, 0.1);
lastDialogChar = dialogChar[curDialog];