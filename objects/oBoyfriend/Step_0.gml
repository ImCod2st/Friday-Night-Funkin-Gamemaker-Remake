if !(global.dead) {
	// make the bf bop to the music
	if (global.enemy != 0) image_speed = ((global.bpm / 60) / 2) * global.deltaMultiplier; //all enemys
	else image_speed = (global.bpm / 60) * global.deltaMultiplier; //tutorial
	
	// change the idle sprite
	if !(sprChanged) {
		sprite_index = sprIdle;
		if (flipped) image_xscale = -image_xscale;
		sprChanged = true;
	}
}
else image_speed = global.deltaMultiplier; // if dead change the image speed to 1 (deltaMultiplier should always equal something close to 1 depending on lag)

if !(global.auto) {
	// not auto mode code
	
	// check for arrow keys
	// activate the animation when keys are pressed
	function noteCheck(key, dir) {
		if (keyboard_check_pressed(key)) {
			notePlaying = dir;
			animCount = 45;
			if (missed) animCount = 70;
			singFrame = 0;
		}
	}
	// subtract the time the animation is playing for
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
		
		// stop all music
		audio_stop_all();
		audio_destroy_sync_group(global.musicSync);
	
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