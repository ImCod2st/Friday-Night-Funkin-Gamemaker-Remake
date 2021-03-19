// choose the sprites to use
char = "sBoyfriend";
flipped = false;
boyfriend_sprites();


useMiss = true;
if !(sprite_exists(asset_get_index(sprite_get_name(sprLeft) + "Miss"))) useMiss = false;

singSprite = -1;

// basic variables
missed = false; // when you have missed

holdAnimation = false; // if the animation should be repeated because their is a hold arrow
animCount = 0; // how long the animation should last for

sprChanged = false; // make sure that the idle sprite has been changed
restartTimer = -1; // how long it has been since you pressed restart (dead variable)

notePlaying = 0; // what direction the animation should be played as

singFrameMulti = 1; // the multiplier for the animation image speed
if (global.enemy = 5) singFrameMulti = 2;
singFrame = 0; // the frame the animation is on

scale = image_yscale; // the entire scale
recAlpha = 0; // death rectangle alpha
returnTo = -1; // return to the main menu if this is 1

// the current score, and combo
global.curScore = 0;
global.combo = 0;

// auto stuff
dir = notes.left;
animationTimer = 0;
animationIndex = 0;

spriteUsed = sprLeft;