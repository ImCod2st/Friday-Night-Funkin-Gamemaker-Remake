vsp += grav * global.deltaMultiplier;
y += vsp * global.deltaMultiplier;
if (y > ystart + 12) image_alpha -= 0.04 * global.deltaMultiplier;
if (image_alpha < 0) instance_destroy();