if !(global.dead) image_speed = (global.bpm / 60) / 2;

function noteCheck(key, dir) {
	if (keyboard_check_pressed(key)) {
		notePlaying = dir;
		animCount = 70;
		singFrame = 0;
	}
}
if (animCount > 0) animCount--;

if !(global.dead) {
	noteCheck(vk_left, notes.left);
	noteCheck(vk_down, notes.down);
	noteCheck(vk_up, notes.up);
	noteCheck(vk_right, notes.right);
}

if !(holdAnimation) {
	if (singFrame < 1) singFrame += 0.08;
} else {
	singFrame += 0.1;
	if (singFrame > 10) singFrame = 0;
}

// death
if (global.hp <= 0) && !(global.dead) {
	global.dead = true;
	
	audio_stop_all();
	audio_stop_sync_group(global.musicSync);
	
	audio_play_sound(fnf_loss_sfx, 100, false);
	
	image_index = 0;
	image_speed = 1;	
	sprite_index = sBoyfriendDie;
}
if (keyboard_check_pressed(vk_enter)) && (global.dead) && (restartTimer <= 0) {
	image_speed = 1;
	image_index = 0;
	restartTimer = 340;
	
	audio_stop_all();
	audio_play_sound(gameOverEnd, 100, false);
	
	sprite_index = sBoyfriendDie3;
}
if (restartTimer > 0) restartTimer--;
if (restartTimer = 0) room_restart();