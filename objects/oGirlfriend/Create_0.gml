dir = notes.left;
spriteUsed = sGirlfriendLeft;
animationTimer = 0;
animationIndex = 0;

if (room = Title) {
	sprite_index = sGirlfriendTitle;	
	image_speed = (100 / 60) / 2;
}

bpmMulti = 2;
if (global.enemy = 5) sprite_index = sGirlfriendCarIdle;
if (global.enemy = 6) sprite_index = sGirlfriendChristIdle;
if (global.enemy = 102) image_alpha = 0;