if (sprite_index = sprDeath) {
	audio_play_sound(gameoverMusic, 100, true);
	sprite_index = sprDeath2;
	image_speed = (180 / 60) / 2;
}

if (sprite_index = sprDeath3) && (deathAnimCooldown <= 0) {
	image_speed = 0;
	image_index = image_number - 1;
}

if (sprite_index = sBoyfriendCheer) {
	sprite_index = sprIdle;	
}