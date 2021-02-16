if (global.dead) exit;

if (animationTimer > 0) {
	if (dir = notes.left)	spriteUsed = sprLeft;
	if (dir = notes.down) spriteUsed = sprDown;
	if (dir = notes.up) spriteUsed = sprUp;
	if (dir = notes.right) spriteUsed = sprRight;
	draw_sprite_ext(spriteUsed, animationIndex, x, y, image_xscale, image_yscale, 0, c_white, 1);
} else {
	draw_self();
}