image_speed = 0;

spr = sDownArrowButton;
sprHit = asset_get_index(sprite_get_name(spr) + "Hit");
key = vk_down;
altKey = global.downKeybind;
dir = notes.down;
enemy = false; 

botTimer = 0;

afterCreate = false;

if (global.downScroll) image_yscale = -image_yscale;

event_inherited();