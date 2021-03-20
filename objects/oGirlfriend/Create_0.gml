dir = notes.left;
spriteUsed = sGirlfriendLeft;
animationTimer = 0;
animationIndex = 0;
scale = image_yscale;

if (room = Title) {
	sprite_index = sGirlfriendTitle;	
	image_speed = (100 / 60) / 2;
}

bpmMulti = 2;
if (global.enemy = 5) sprite_index = sGirlfriendCarIdle;
if (global.enemy = 6) sprite_index = sGirlfriendChristIdle;
if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) {sprite_index = sGirlfriendPixelIdle; scale = 6;}
if (global.enemy = 102) sprite_index = sGirlfriendCodist;