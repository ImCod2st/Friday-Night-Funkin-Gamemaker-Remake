surface_set_target(global.hudSurface);
if (switchTurn) image_alpha = 0;
if !(global.dead) {
	draw_set_alpha(0.6);
	draw_sprite_stretched(sNotesMid, image_index, x - 18, y, 50 * image_xscale, sliderLength);	
	if (sliderLength = 0) draw_set_alpha(0);
	draw_sprite_stretched(sNotesLow, image_index, x - 18, y + (sliderLength) - 4, 50 * image_xscale, 65 * image_xscale);
	draw_set_alpha(1);
	
	if !(heldAlready) draw_self();
}
surface_reset_target();