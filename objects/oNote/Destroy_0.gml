if (switchTurn) {
	global.turn = -global.turn;	
}
if (bfHey) {
	show_debug_message("hi");
	oBoyfriend.sprite_index = sBoyfriendCheer;
	oBoyfriend.image_index = 0;
}
if (useAlt) {
	with (oEnemy) altUsed = !altUsed;
}