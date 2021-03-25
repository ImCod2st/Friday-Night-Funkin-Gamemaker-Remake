if (instance_exists(oDialogBox)) exit;

if (y > 1280) exit;
if !(surface_exists(global.hudSurface)) exit;
surface_set_target(global.hudSurface);
if !(global.dead) {
	draw_set_alpha(0.8 + (image_alpha - 1));
	draw_sprite_stretched(midNote, image_index, x - 18, y, 50 * image_xscale, sliderLength);	
	if (sliderLength = 0) draw_set_alpha(0);
	draw_sprite_stretched(lowNote, image_index, x - 18, y + (sliderLength) - 4, 50 * image_xscale, 65 * image_xscale);
	draw_set_alpha(1);
	
	if !(heldAlready) && !(notRealNote) draw_self();
}
surface_reset_target();