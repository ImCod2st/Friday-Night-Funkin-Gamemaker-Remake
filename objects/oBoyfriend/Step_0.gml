if !(global.dead) {
	if (global.enemy != 0) image_speed = ((global.bpm / 60) / 2) * global.deltaMultiplier;
	else image_speed = (global.bpm / 60) * global.deltaMultiplier;
	if !(sprChanged) {
		sprite_index = sprIdle;
		sprChanged = true;
	}
}
else image_speed = global.deltaMultiplier;

if !(global.auto) {
	// not auto mode code

	function noteCheck(key, dir) {
		if (keyboard_check_pressed(key)) {
			notePlaying = dir;
			animCount = 45;
			if (missed) animCount = 70;
			singFrame = 0;
		}
	}
	if (animCount > 0) animCount -= 1 * global.deltaMultiplier;

	if !(global.dead) {
		noteCheck(vk_left, notes.left);
		noteCheck(vk_down, notes.down);
		noteCheck(vk_up, notes.up);
		noteCheck(vk_right, notes.right);
	}

	if !(holdAnimation) {
		var endAnim = sprite_get_number(sprLeft) - 1;
		if (missed) endAnim = 1;
		if (singFrame < endAnim) singFrame += (0.08 * singFrameMulti) * global.deltaMultiplier;
	} else {
		singFrame += (0.1 * singFrameMulti) * global.deltaMultiplier;
		if (singFrame > 10) singFrame = 0;
	}

	// death
	if (global.hp <= 0) && !(global.dead) && !(global.nofail) {
		global.dead = true;
	
		audio_stop_all();
		audio_stop_sync_group(global.musicSync);
	
		audio_play_sound(fnf_loss_sfx, 100, false);
	
		image_index = 0;
		sprite_index = sBoyfriendDie;
	}
	if (keyboard_check_pressed(vk_enter)) && (global.dead) && (restartTimer <= 0) {
		image_index = 0;
		restartTimer = 340;
	
		audio_stop_all();
		audio_play_sound(gameOverEnd, 100, false);
	
		sprite_index = sBoyfriendDie3;
	}
	if (restartTimer > 0) restartTimer--;
	if (restartTimer = 0) room_restart();

} else {
	// auto mode code
	
	if (sprite_index != sprIdle) sprite_index = sprIdle;

	if (animationTimer > 0) {
		animationTimer -= global.deltaMultiplier;
		if (animationIndex < sprite_get_number(spriteUsed) - 1) or (holdAnimation) animationIndex += (0.09 * singFrameMulti) * global.deltaMultiplier;	
	} else {
		animationIndex = 0;	
	}
}

image_xscale = scale;
image_yscale = scale;