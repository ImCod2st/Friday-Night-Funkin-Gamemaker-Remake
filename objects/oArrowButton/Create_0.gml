image_speed = 0;

spr = sDownArrowButton;
sprHit = asset_get_index(sprite_get_name(spr) + "Hit");
key = vk_down;
dir = notes.down;
enemy = false;

botTimer = 0;

afterCreate = false;

event_inherited();