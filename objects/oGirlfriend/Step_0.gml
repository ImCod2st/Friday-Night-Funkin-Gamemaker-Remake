image_speed = (global.bpm / 60) / bpmMulti * global.deltaMultiplier;
if (animationTimer > 0) {
	animationTimer -= global.deltaMultiplier;
	if (animationIndex < sprite_get_number(spriteUsed) - 1) animationIndex += 0.2 * global.deltaMultiplier;	
} else {
	animationIndex = 0;	
}

image_xscale = scale;
image_yscale = scale;