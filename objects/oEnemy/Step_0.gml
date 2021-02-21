if (global.enemy = 0) instance_destroy();

if (animationTimer > 0) {
	animationTimer--;
	if (animationIndex < sprite_get_number(spriteUsed) - 1) or (holdAnimation) animationIndex += 0.08;	
} else {
	animationIndex = 0;	
}