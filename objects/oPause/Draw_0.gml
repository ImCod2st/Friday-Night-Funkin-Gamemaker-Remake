// draw the fake characters
draw_sprite_ext(gfSprite, gfFakeIndex, gfFakeX, gfFakeY, gfFakeScale, gfFakeScale, 0, c_white, 1);
draw_sprite_ext(bfSprite, bfFakeIndex, bfFakeX, bfFakeY, bfFakeScale, bfFakeScale, 0, c_white, 1);
if (enSprite != undefined) {
	draw_sprite_ext(enSprite, enFakeIndex, enFakeX, enFakeY, enFakeScaleX, enFakeScaleY, 0, c_white, 1);
}