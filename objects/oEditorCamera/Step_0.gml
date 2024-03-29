if (y > viewHHalf) room_height = y + viewHHalf;

y = (audio_sound_get_track_position(global.music) * global.camSpeed) + oDebugNoteEditor.y;
if (audio_is_paused(global.music)) {
	var curTrackPos = audio_sound_get_track_position(global.music);
	var scrollSpeed = 0.12;
	if (keyboard_check(vk_control)) scrollSpeed = 0.01;
	if (keyboard_check(vk_alt)) scrollSpeed = 0.5;
	if !(keyboard_check(vk_shift)) && !(keyboard_check(vk_tab)) {
		if (mouse_wheel_up()) audio_sound_set_track_position(global.music,curTrackPos - scrollSpeed);
		if (mouse_wheel_down()) audio_sound_set_track_position(global.music,curTrackPos + scrollSpeed);
	}
}