if !(global.dead) {
	// change the idle sprite
	if !(sprChanged) {
		sprite_index = sprIdle;
		sprChanged = true;
	}
	
	// make the bf bop to the music
	var bpmBopAt = 240;
	if (global.bpm <= 100) bpmBopAt = 120;
	
	bpmTimer += (global.bpm / 60) * global.deltaMultiplier;
	if (bpmTimer >= bpmBopAt) {
		bopFrame = 1;
		bpmTimer = 0 + (bpmTimer - bpmBopAt);
	}
	if (bopFrame >= 1) bopFrame += (0.1 * singFrameMulti) * global.deltaMultiplier;;
	if (bopFrame > image_number) bopFrame = 0;
	
	if (sprite_index = sprIdle) image_index = bopFrame;
}
else image_speed = global.deltaMultiplier; // if dead change the image speed to 1 (deltaMultiplier should always equal something close to 1 depending on lag)

if !(global.auto) {
	// not auto mode code
	
	// check for arrow keys
	// activate the animation when keys are pressed
	function noteCheck(key, altKey, controllerKey, dir) {
		if (keyboard_check_pressed(key)) || (keyboard_check_pressed(altKey))
		|| (gamepad_button_check_pressed(global.controller, controllerKey)) {
			notePlaying = dir;
			animCount = 45;
			if (missed) animCount = 70;
			singFrame = 0;
		}
	}
	// subtract the time the animation is playing for
	if (animCount > 0) animCount -= 1 * global.deltaMultiplier;

	if !(global.dead) {
		noteCheck(vk_left, global.leftKeybind, gp_padl, notes.left);
		noteCheck(vk_down, global.downKeybind, gp_padd, notes.down);
		noteCheck(vk_up, global.upKeybind, gp_padu, notes.up);
		noteCheck(vk_right, global.rightKeybind, gp_padr, notes.right);
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
	
		audio_play_sound(deathSound, 100, false);
	
		sprite_index = sprDeath;
		image_index = 0;
		image_speed = 1;
	}
	
	if ((keyboard_check_pressed(vk_enter)) 
	|| (keyboard_check_pressed(vk_space))
	|| (keyboard_check_pressed(global.acceptKeybind))
	|| (gamepad_button_check_pressed(global.controller, gp_face1))
	|| (gamepad_button_check_pressed(global.controller, gp_start))) 
	&& (global.dead) && (restartTimer <= 0)
	&& (!returnTo) {
		image_index = 0;
		restartTimer = 340;
	
		audio_stop_all();
		audio_play_sound(gameoverMusicEnd, 100, false);
	
		sprite_index = sprDeath3;
	}
	
	if ((keyboard_check_pressed(vk_backspace)) 
	|| (keyboard_check_pressed(global.backKeybind))
	|| (gamepad_button_check_pressed(global.controller, gp_face2)))
	&& (!instance_exists(oFade))
	&& (global.dead) {
		returnTo = 1;
		restartTimer = 100;
		audio_stop_all();
	}
	
	if (restartTimer > 0) {
		restartTimer--;
		if (returnTo) recAlpha += 0.025;
		else recAlpha += 0.005;
	}
	
	if (restartTimer == 0) {
		var o = instance_create_depth(0, 0, -10000, oFade);
		with (o) {
			fadeY = -199;
			moved = true;
		}
		global.dead = false;
		
		if (!returnTo) room_restart();
		else {
			var roomTo;
			if (global.freeplay) {
				roomTo = FreePlay;
			} else {
				audio_play_sound(freakyMenu, 100, true);
				roomTo = StoryMenu;
			}
			
			room_goto(roomTo);
		}
	}

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

image_yscale = scale;

if !(flipped) image_xscale = scale;
else image_xscale = -scale;