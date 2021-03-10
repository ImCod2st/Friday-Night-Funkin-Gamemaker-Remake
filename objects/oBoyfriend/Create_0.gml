var add = "";
if (global.enemy = 5) add = "Car";
if (global.enemy = 6) or (global.enemy = 7) add = "Christ";
if (global.enemy = 102) add = "Cod";
sprIdle = asset_get_index("sBoyfriend" + add + "Idle");
sprLeft = asset_get_index("sBoyfriend" + add + "Left");
sprDown = asset_get_index("sBoyfriend" + add + "Down");
sprUp = asset_get_index("sBoyfriend" + add + "Up");
sprRight = asset_get_index("sBoyfriend" + add + "Right");
singSprite = -1;

missed = false;
restartTimer = -1;
holdAnimation = false;
animCount = 0;
bounce = false;
sprChanged = false;

notePlaying = 0;
singFrameMulti = 1;
if (global.enemy = 5) singFrameMulti = 2;
singFrame = 0;

scale = image_xscale;

global.curScore = 0;
global.combo = 0;

// auto stuff
dir = notes.left;
animationTimer = 0;
animationIndex = 0;

spriteUsed = sprLeft;