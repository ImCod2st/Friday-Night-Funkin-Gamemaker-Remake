if (instance_exists(oFade)) exit;
if (index < sprite_get_number(spr) - 1) index += 0.1;

if (lastDialogChar != dialogChar[curDialog]) {
	charSpriteOffset = -60;
	show_debug_message(dialogChar[curDialog]);
	if (dialogChar[curDialog] = ":bf:") or (dialogChar[curDialog] = ":bfpixel:") charSpriteOffset = 60;
}

charSpriteOffset = lerp(charSpriteOffset, 0, 0.1);
lastDialogChar = dialogChar[curDialog];