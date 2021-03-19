animate = 0;
bfAnimate = 0;

// if the player is exiting the stage dead
if (global.dead = true) {
	var o = instance_create_depth(0, 0, depth - 100, oFade);
	with (o) {
		fadeY = -199;
		moved = true;
	}
	global.dead = false;
}

yOffset = 0;
yOffsetTo = 0;

difOffset = 0;
leftArrowScale = 1;
leftArrowScaleTo = 1;
rightArrowScale = 1;
rightArrowScaleTo = 1;

selectedWeek = 0;
weekName[0] = "";
weekName[1] = "DADDY DEAREST";
weekName[2] = "SPOOKY MONTH";
weekName[3] = "PICO";
weekName[4] = "MOMMY MUST MURDER";

selected = false;
selectedTimer = 0;

scorDisplay = 0;