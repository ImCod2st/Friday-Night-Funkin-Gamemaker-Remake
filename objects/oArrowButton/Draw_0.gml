if (instance_exists(oDialogBox)) exit;

if !(surface_exists(global.hudSurface)) exit;
surface_set_target(global.hudSurface);
if !(global.dead) draw_self();
surface_reset_target();