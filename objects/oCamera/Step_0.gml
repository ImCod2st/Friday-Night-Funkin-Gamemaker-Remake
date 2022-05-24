// smoothly move the cam to the x pos
x = lerp(xTo, x, 0.97);
y = lerp(yTo, y, 0.97);

// if the player is dead, move the camera to him
if (global.dead) {
	xTo = oBoyfriend.x;
	yTo = oBoyfriend.y - 200;
} else {
	// decide what the position should be for the camera
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
		yTo = 752 + bfOffsetY - (((sprite_get_height(oBoyfriend.sprIdle)/2) % 8) * 8);	
		// idk I just wanted to automatically adjust for the height of all characters but I get if you wanna remove that
	}

}

if (keyboard_check_pressed(vk_enter))
|| (keyboard_check_pressed(global.acceptKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_start)) {
	if (instance_exists(oPause)) exit;
	if (instance_exists(oDialogBox)) exit; 
	if (instance_exists(oVideo)) exit;
	if (global.dead) exit;
	if (rankingScreen) exit;
	
	instance_create_layer(0, 0, "Main", oPause);
}

// backgrounds
if (!instance_exists(oPause))
	background_setup();
	
if (rankingScreen) {
	// zoom the camera
	global.camWidth = 1024;
	global.camHeight = 576;
	
	xTo = oBoyfriend.x - 200;
	yTo = oBoyfriend.y - 200;
}

// change the cameras size
var cam = view_camera[0];
camera_set_view_size(cam, global.camWidth, global.camHeight);