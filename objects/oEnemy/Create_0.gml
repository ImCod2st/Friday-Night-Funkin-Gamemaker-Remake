image_speed = 1;
dir = notes.left;
animationTimer = 0;
animationIndex = 0;
holdAnimation = false;
singFrameMulti = 1;

sprEnemy[0] = "sGirlfriend";
sprEnemy[1] = "sDad";
sprEnemy[2] = "sSpooky";
sprEnemy[3] = "sMonster";
sprEnemy[4] = "sPico";
sprEnemy[5] = "sMom";
sprEnemy[6] = "sCParentsDad";
sprEnemy[7] = "sMonsterChrist";
sprEnemy[8] = "sSenpai";
sprEnemy[9] = "sSenpaiMad";
sprEnemy[10] = "sSpirit";
sprEnemy[11] = "sTankman";
sprEnemy[100] = "sWhitty";
sprEnemy[101] = "sWhittyC";
sprEnemy[102] = "sOxi";
sprEnemy[103] = "sBoyfriendPixel";

if (global.enemy = 0) instance_destroy();

var sprChosen = sprEnemy[global.enemy];
sprIdle = asset_get_index(sprChosen + "Idle");
sprLeft = asset_get_index(sprChosen + "Left");
sprDown = asset_get_index(sprChosen + "Down");
sprUp = asset_get_index(sprChosen + "Up");
sprRight = asset_get_index(sprChosen + "Right");

sprite_index = sprIdle;

if (global.enemy = 6) {
	sprLeftAlt =	sCParentsMomLeft;
	sprDownAlt =	sCParentsMomDown;
	sprUpAlt =	sCParentsMomUp;
	sprRightAlt =	sCParentsMomRight;
}

scale = image_yscale;
if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) or (global.enemy = 103) scale = 6;

flipped = false;
if (global.enemy = 4) or (global.enemy = 103) flipped = true;
if (flipped) {
	var oldLeft = sprLeft; var oldRight = sprRight;
	sprLeft = oldRight; sprRight = oldLeft;
}

altUsed = false;

spriteUsed = sprLeft;
shadowSprite[0] = sprite_index;
shadowSprite[1] = sprite_index;
shadowSprite[2] = sprite_index;