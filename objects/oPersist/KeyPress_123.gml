// activate dev mode
if (instance_exists(oDevMode)) instance_destroy(oDevMode);
else instance_create_depth(x, y, depth, oDevMode);