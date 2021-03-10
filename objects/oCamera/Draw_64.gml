if (global.flashlight) {
	var surfaceLight = surface_create(1280, 720);
	surface_set_target(surfaceLight);
	
	draw_set_color(c_black);
	draw_set_alpha(0.92);
	draw_rectangle(0, 0, 1280, 720, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	gpu_set_blendmode(bm_subtract);
	
	var cX = 910;
	if !(global.turn) cX = 270;
	
	var cY = 200;
	
	if (global.dead) {
		cX = 1280 / 2;
		cY = 720 / 2;
	}
	
	flashX = lerp(cX, flashX, 0.93);
	flashY = lerp(cY, flashY, 0.93);
	draw_sprite_ext(sFlashLight, 0, flashX, flashY, 1.2, 1.2, 0, c_white, 0.7);
	gpu_set_blendmode(bm_normal);
	
	surface_reset_target();
	draw_surface(surfaceLight, 0, 0);
	surface_free(surfaceLight);
}