if (global.dead) exit;

if (animationTimer > 0) {
	var usedLeft = sprLeft;
	var usedDown = sprDown;
	var usedUp = sprUp;
	var usedRight = sprRight;
	if (altUsed) {
		usedLeft = sprLeftAlt;
		usedDown = sprDownAlt;
		usedUp = sprUpAlt;
		usedRight = sprRightAlt;
	}
	
	if (dir = notes.left)	spriteUsed = usedLeft;
	if (dir = notes.down) spriteUsed = usedDown;
	if (dir = notes.up) spriteUsed = usedUp;
	if (dir = notes.right) spriteUsed = usedRight;
	draw_sprite_ext(spriteUsed, animationIndex, x, y, image_xscale, image_yscale, 0, c_white, 1);
} else {
	draw_self();
}