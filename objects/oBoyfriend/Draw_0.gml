if (isPixel) gpu_set_texfilter(false); // pixel filtering

if !(global.auto) {
	singSprite = -1;
	if (notePlaying = notes.left) { 
		if (!flipped) singSprite = sprLeft;
		else singSprite = sprRight;
	}
	if (notePlaying = notes.down) singSprite = sprDown;
	if (notePlaying = notes.up) singSprite = sprUp;
	
	
	if (notePlaying = notes.right) { 
		if (!flipped) singSprite = sprRight;
		else singSprite = sprLeft;
	}
	
	if (missed) && (useMiss) singSprite = asset_get_index(sprite_get_name(singSprite) + "Miss");

	var singing = false;
	if (keyboard_check(vk_left)) || (keyboard_check(global.leftKeybind))
	|| (gamepad_button_check(global.controller, gp_padl)) 
		singing = true;
	if (keyboard_check(vk_right)) || (keyboard_check(global.rightKeybind))
	|| (gamepad_button_check(global.controller, gp_padr)) 
		singing = true;
	if (keyboard_check(vk_down)) || (keyboard_check(global.downKeybind))
	|| (gamepad_button_check(global.controller, gp_padd)) 
		singing = true;
	if (keyboard_check(vk_up)) || (keyboard_check(global.upKeybind))
	|| (gamepad_button_check(global.controller, gp_padu)) 
		singing = true;
		
	if (singing) && (singSprite != -1) && !(global.dead) && !(sprite_index = sBoyfriendCheer) or (animCount > 0) && !(global.dead) && !(sprite_index = sBoyfriendCheer) {
		draw_sprite_ext(singSprite, singFrame, x, y, image_xscale, image_yscale, 0, c_white, 1);
	} else {
		if (global.dead) draw_rectangle_color(0, 0, 10000, 10000, c_black, c_black, c_black, c_black, false);
		draw_self();
	}
} else {
	if (animationTimer > 0) {
		if (dir = notes.left)	spriteUsed = sprLeft;
		if (dir = notes.down) spriteUsed = sprDown;
		if (dir = notes.up) spriteUsed = sprUp;
		if (dir = notes.right) spriteUsed = sprRight;
		draw_sprite_ext(spriteUsed, animationIndex, x, y, image_xscale, image_yscale, 0, c_white, 1);
	} else {
		draw_self();
	}
}

// draw fade stuffs
draw_set_alpha(recAlpha);
draw_set_color(c_black);
draw_rectangle(x - 1280, y - 720, x + 1280, y + 720, 0);
draw_set_color(c_white);
draw_set_alpha(image_alpha);

gpu_set_texfilter(beforeAA);