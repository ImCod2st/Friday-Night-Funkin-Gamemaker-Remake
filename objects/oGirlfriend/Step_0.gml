if (animationTimer > 0) {
	animationTimer--;
	if (animationIndex < sprite_get_number(spriteUsed) - 1) animationIndex += 0.2;	
} else {
	animationIndex = 0;	
}