surface_set_target(global.hudSurface);
if (switchTurn) image_alpha = 0.5;
if !(global.dead) {
	draw_sprite_stretched(sNotesMid, image_index, x - 18, y, 50 * image_xscale, sliderLength);	
	draw_sprite_stretched(sNotesLow, image_index, x - 18, y + (sliderLength) - 4, 50 * image_xscale, 65 * image_xscale);
	
	if !(heldAlready) draw_self();
}
surface_reset_target();