x = lerp(xTo, x, 0.97);
y = lerp(yTo, y, 0.97);

if (global.dead) {
	xTo = oBoyfriend.x;
	yTo = oBoyfriend.y - 200;
} else {

	if !(global.turn) {
		// enemy turn
		if (global.enemy != 0) {
			xTo = 1049 + offsetX;
			yTo = 593 + offsetY;
		} else {
			// girlfriend
			xTo = 1251;
			yTo = 600;
		}
	} else {
		// bf turn
		xTo = 1369 + bfOffsetX;
		yTo = 752 + bfOffsetY;	
	}

}

// backgrounds
background_setup();

var cam = view_camera[0];
camera_set_view_size(cam, global.camWidth, global.camHeight);