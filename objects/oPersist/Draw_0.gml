// hud surface
var camX = camera_get_view_x(view_camera[0]) + 640;
var camY = camera_get_view_y(view_camera[0]) + 360;

if !(surface_exists(global.hudSurface)) global.hudSurface = surface_create(1280, 720);
draw_surface_stretched(global.hudSurface, camX - 640, camY - 360, global.camWidth + hudBopScale,  global.camHeight + hudBopScale);

surface_set_target(global.hudSurface);
draw_clear_alpha(c_white,0);
surface_reset_target();