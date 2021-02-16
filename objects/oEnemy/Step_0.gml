if (global.enemy = 0) instance_destroy();

if (animationTimer > 0) {
	animationTimer--;
	animationIndex += 0.08;	
} else {
	animationIndex = 0;	
}