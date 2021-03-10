if (sprite_index = sBoyfriendDie) {
	audio_play_sound(gameOver, 100, true);
	sprite_index = sBoyfriendDie2;
	image_speed = (180 / 60) / 2;
}

if (sprite_index = sBoyfriendDie3) {
	image_speed = 0;
	image_index = image_number - 1;
}

if (sprite_index = sBoyfriendCheer) {
	sprite_index = sprIdle;	
}