if (switchTurn) {
	global.turn = -global.turn;	
}
if (bfHey) {
	if (global.dead) exit;
	
	if (x < 600) {
		var newSpriteEnemy = undefined;
		if (global.songName = "Ugh") newSpriteEnemy = sTankmanUgh;
		if (global.songName = "Stress") newSpriteEnemy = sTankmanHey;
		if (newSpriteEnemy != undefined) {
			oEnemy.animationTimer = 0;
			oEnemy.sprite_index = newSpriteEnemy;
			oEnemy.image_index = 0;	
		}
	} else {
		oBoyfriend.sprite_index = sBoyfriendCheer;
		oBoyfriend.image_index = 0;
	}
}
if (useAlt) {
	with (oEnemy) altUsed = !altUsed;
}