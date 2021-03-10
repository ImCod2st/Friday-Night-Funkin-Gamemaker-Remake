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
sprEnemy[101] = "sWhittyC";
sprEnemy[102] = "sOxi";

if (global.enemy = 0) instance_destroy();

var sprChosen = sprEnemy[global.enemy];
sprIdle = asset_get_index(sprChosen + "Idle");
sprLeft = asset_get_index(sprChosen + "Left");
sprDown = asset_get_index(sprChosen + "Down");
sprUp = asset_get_index(sprChosen + "Up");
sprRight = asset_get_index(sprChosen + "Right");

if (global.enemy = 6) {
	sprLeftAlt =	sCParentsMomLeft;
	sprDownAlt =	sCParentsMomDown;
	sprUpAlt =	sCParentsMomUp;
	sprRightAlt =	sCParentsMomRight;
}

flipped = false;
if (global.enemy = 4) flipped = true;

altUsed = false;

spriteUsed = sprLeft;