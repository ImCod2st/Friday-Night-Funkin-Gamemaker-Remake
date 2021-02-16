// hud surface
var camX = camera_get_view_x(view_camera[0]) + 640;
var camY = camera_get_view_y(view_camera[0]) + 360;

draw_surface_ext(global.hudSurface, camX - (hudBopScale * 640), camY - (hudBopScale * 360), hudBopScale, hudBopScale, 0, c_white, 1);

surface_set_target(global.hudSurface);
draw_clear_alpha(c_white,0);
surface_reset_target();