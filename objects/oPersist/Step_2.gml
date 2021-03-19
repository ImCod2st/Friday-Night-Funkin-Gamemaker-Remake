/// @description 
// set the voices
if (global.voices != "") {
	// don't mute if you aren't able to
	if (!global.turn) 
		audio_sound_gain(global.voices, 1, 0);
	else
		audio_sound_gain(global.voices, global.playVoice, 0.01);
}

// there is no set controller

var controllers = gamepad_get_device_count();
for (var i = 0; i < controllers; i++) {
	if (gamepad_is_connected(i)) {
		global.controller = i;
	}
}