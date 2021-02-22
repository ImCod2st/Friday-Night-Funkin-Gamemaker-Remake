if !(selected) {
	if (keyboard_check_pressed(vk_down)) {
		audio_play_sound(scrollMenu, 0, false);
		menuSelected++;
	}
	if (keyboard_check_pressed(vk_up)) {
		audio_play_sound(scrollMenu, 0, false);
		menuSelected--;
	}
	if (keyboard_check_pressed(vk_enter)) {
		audio_play_sound(confirmMenu, 1, false);
		if (menuSelected = 0) {
			selected = true;
			textFlash[1] = 0;
			textFlash[2] = 0;
		}
		if (menuSelected = 1) {
			selected = true;
			textFlash[0] = 0;
			textFlash[2] = 0;
		}
		if (menuSelected = 2) url_open("https://ninja-muffin24.itch.io/funkin");
	}
}

if (selected) {
	selectedTimer++;	
	if (textFlash[menuSelected] >= 1) textFlash[menuSelected] = 0; textFlash[menuSelected] += 0.05;
	if (bgFlash >= 1) bgFlash = 0; bgFlash += 0.02;
}
if (selectedTimer = 120) {
	if (menuSelected = 0) {
		o = instance_create_depth(0, 0, -10000, oFade);
		o.roomTo = StoryMenu;
	}
	if (menuSelected = 1) {
		o = instance_create_depth(0, 0, -10000, oFade);
		o.roomTo = FreePlay;
	}
}

yBgOff = lerp(yBgOff, yBgTo, 0.06);
if (menuSelected = 0) yBgTo = -10;
if (menuSelected = 1) yBgTo = 0;
if (menuSelected = 2) yBgTo = 10;