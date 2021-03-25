// list everything in the menu
menus[0] = "exit to menu";
menus[1] = "restart song";
menus[2] = "resume";

curSelected = 2; // decides which menu in the list is selected
timer = 20; // timer prevents from events being activated instantly

// pick the fake location of the boyfriend
bfSprite = oBoyfriend.sprite_index;
bfFakeX = oBoyfriend.x;
bfFakeY = oBoyfriend.y;
bfFakeIndex = oBoyfriend.image_index;
bfFakeScale = oBoyfriend.image_xscale;

// pick the fake location of the girlfriend
gfSprite = oGirlfriend.sprite_index;
gfFakeX = oGirlfriend.x;
gfFakeY = oGirlfriend.y;
gfFakeIndex = oGirlfriend.image_index;
gfFakeScale = oGirlfriend.image_xscale;

// pick the fake location of the enemy
enSprite = undefined;
if (instance_exists(oEnemy)) {
	enSprite = oEnemy.sprite_index;
	enFakeX = oEnemy.x;
	enFakeY = oEnemy.y;
	enFakeIndex = oEnemy.image_index;
	enFakeScaleX = oEnemy.image_xscale;
	enFakeScaleY = oEnemy.image_yscale;
}

// create lists for the offsets of each item in the menu list
yOffset = array_create(array_length(menus))
xOffset = array_create(array_length(menus))

curAlpha = 0;
curAlphaTo = 0.5;

// deactivate all objects, and pause the music
audio_pause_sync_group(global.musicSync);
instance_deactivate_all(true);