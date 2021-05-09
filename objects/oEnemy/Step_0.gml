if (global.enemy = 0) instance_destroy();
if (global.enemy = 5) or (global.enemy = 6) singFrameMulti = 2;
if (global.enemy = 10) singFrameMulti = 2;
image_speed = global.deltaMultiplier;

if (animationTimer > 0) {
	animationTimer -= global.deltaMultiplier;
	if (animationIndex < sprite_get_number(spriteUsed) - 1) or (holdAnimation) animationIndex += (0.09 * singFrameMulti) * global.deltaMultiplier;	
} else {
	animationIndex = 0;	
}

image_yscale = scale;
if !(flipped) image_xscale = scale;
else image_xscale = -scale;