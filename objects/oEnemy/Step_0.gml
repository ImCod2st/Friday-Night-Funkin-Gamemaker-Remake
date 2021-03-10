if (global.enemy = 0) instance_destroy();
if (global.enemy = 5) or (global.enemy = 6) singFrameMulti = 2;
if (sprite_index != sprIdle) sprite_index = sprIdle;
image_speed = global.deltaMultiplier;

if (flipped) {
	image_xscale = -image_xscale;
	flipped = false;
}

if (animationTimer > 0) {
	animationTimer -= global.deltaMultiplier;
	if (animationIndex < sprite_get_number(spriteUsed) - 1) or (holdAnimation) animationIndex += (0.09 * singFrameMulti) * global.deltaMultiplier;	
} else {
	animationIndex = 0;	
}