x = lerp(xTo, x, 0.97);
y = lerp(yTo, y, 0.97);

if (global.dead) {
	xTo = oBoyfriend.x;
	yTo = oBoyfriend.y - 200;
} else {

	if !(global.turn) {
		if (global.enemy != 0) {
			xTo = 1049;
			yTo = 593;
		} else {
			xTo = 1251;
			yTo = 600;
		}
	} else {
		xTo = 1369;
		yTo = 772;	
	}

}