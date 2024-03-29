if (timeUntilMoveOn < 420) {
	// hud surface
	var camX = camera_get_view_x(view_camera[0]);
	var camY = camera_get_view_y(view_camera[0]);

	// draw the hud
	if !(surface_exists(global.hudSurface)) global.hudSurface = surface_create(1280, 720);
	//draw_surface_stretched(global.hudSurface, camX - 640 - (hudBopScale / 2), camY - 360 - (hudBopScale / 2), global.camWidth + hudBopScale,  global.camHeight + hudBopScale);
	
	var camHeightDown = (global.camHeight * global.downScroll);
	var camHeightNegative = global.camHeight;
	if (global.downScroll) camHeightNegative = -global.camHeight;
	draw_surface_ext(global.hudSurface, camX, camY + camHeightDown, (global.camWidth / 1280), (camHeightNegative / 720), 0, c_white, 1);
	
	surface_set_target(global.hudSurface);
	draw_clear_alpha(c_white,0);
	surface_reset_target();
}