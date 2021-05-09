var trackPos = audio_sound_get_track_position(mus);

if (trackPos >= 1.8) && (curText = 0) curText++;	// presents
if (trackPos >= 2.3) && (curText = 1) curText++;	// recreation of
if (trackPos >= 4.1) && (curText = 2) curText++; // ...games
if (trackPos >= 4.7) && (curText = 3) curText++;	// blank
if (trackPos >= 5.3) && (curText = 4) curText++;	// something
if (trackPos >=6.4) && (curText = 5) curText++;	// stupid
if (trackPos >=7.1) && (curText = 6) curText++;	// friday
if (trackPos >=7.6) && (curText = 7) curText++;	// night
if (trackPos >=8.2) && (curText = 8) curText++;	// funkin
if (trackPos >=8.7) && (curText = 9) curText++;	// gms2 remake
if (trackPos >=9.4) && (curText = 10) {
	curText++;
	whiteFlashOpacity = 1;
	image_index = 0;
	oGirlfriend.image_index = 0;
}

// move to main title screen
if (trackPos >= 9.5) {
	backgroundHidden = false;	
}

if ((keyboard_check_pressed(vk_enter))
|| (keyboard_check_pressed(vk_space))
|| (keyboard_check_pressed(global.acceptKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_face1))
|| (gamepad_button_check_pressed(global.controller, gp_start))) 
&& (timerUntilNextRoom = -1)
&& (backgroundHidden) {
	backgroundHidden = false;
	curText = 11;
	
	whiteFlashOpacity = 1;
	image_index = 0;
	oGirlfriend.image_index = 0;
}

if ((keyboard_check_pressed(vk_enter))
|| (keyboard_check_pressed(global.acceptKeybind))
|| (gamepad_button_check_pressed(global.controller, gp_start)))
&& (timerUntilNextRoom = -1)
&& (!backgroundHidden) {
	audio_play_sound(confirmMenu, 10, false);
	whiteFlashOpacity = 1;
	timerUntilNextRoom = 0;
	oPressEnter.sprite_index = sPressEnterPressed;	
}

if (whiteFlashOpacity > 0) whiteFlashOpacity -= 0.0025;
if (timerUntilNextRoom >= 0) timerUntilNextRoom += 1;
if (timerUntilNextRoom >= 240) {
	instance_create_depth(x,y,depth - 10000,oFade);
	timerUntilNextRoom = 200000;
}