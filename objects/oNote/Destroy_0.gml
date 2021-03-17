if (switchTurn) {
	global.turn = -global.turn;	
}
if (bfHey) {
	if (global.dead) exit;
	show_debug_message("hi"); // hi
	oBoyfriend.sprite_index = sBoyfriendCheer;
	oBoyfriend.image_index = 0;
}
if (useAlt) {
	with (oEnemy) altUsed = !altUsed;
}