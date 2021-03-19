// keyboard binding stuff
curKey = 0;

// key names
keyString[0] = "left";
keyString[1] = "down";
keyString[2] = "up";
keyString[3] = "right";

// default keys
key[0] = vk_left;
key[1] = vk_down;
key[2] = vk_up;
key[3] = vk_right;

// disable all other objects
keyboard_unset_map();
instance_deactivate_all(true);