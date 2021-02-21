menus[0] = "exit to menu";
menus[1] = "restart song";
menus[2] = "resume";

curSelected = 2;
timer = 20;

bfFakeX = oBoyfriend.x;
bfFakeY = oBoyfriend.y;
bfFakeIndex = oBoyfriend.image_index;
bfFakeScale = oBoyfriend.image_xscale;

gfFakeX = oGirlfriend.x;
gfFakeY = oGirlfriend.y;
gfFakeIndex = oGirlfriend.image_index;
gfFakeScale = oGirlfriend.image_xscale;

enSprite = undefined;
if (instance_exists(oEnemy)) {
	enSprite = oEnemy.sprite_index;
	enFakeX = oEnemy.x;
	enFakeY = oEnemy.y;
	enFakeIndex = oEnemy.image_index;
	enFakeScale = oEnemy.image_xscale;
}

yOffset = array_create(array_length(menus))
xOffset = array_create(array_length(menus))

instance_deactivate_all(true);