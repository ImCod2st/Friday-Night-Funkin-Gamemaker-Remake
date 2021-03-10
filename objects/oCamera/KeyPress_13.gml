if (instance_exists(oPause)) exit;
if (global.dead) exit;


instance_create_layer(0, 0, "Main", oPause);