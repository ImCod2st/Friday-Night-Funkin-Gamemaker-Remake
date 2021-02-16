if (animationTimer > 0) {
	if (dir = notes.left)	spriteUsed = sGirlfriendLeft;
	if (dir = notes.down) spriteUsed = sGirlfriendDown;
	if (dir = notes.up) spriteUsed = sGirlfriendUp;
	if (dir = notes.right) spriteUsed = sGirlfriendRight;
	draw_sprite_ext(spriteUsed, animationIndex, x, y, image_xscale, image_yscale, 0, c_white, 1);
} else {
	draw_self();
}