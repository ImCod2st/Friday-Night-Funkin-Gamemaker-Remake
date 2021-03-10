animate += 0.08;
if !(selected) bfAnimate = animate;
else if (bfAnimate < 2) bfAnimate += 0.08;	

yOffset = lerp(yOffset, yOffsetTo, 0.1);
yOffsetTo = selectedWeek * 120;

// week change
if !(selected) {

if (keyboard_check_pressed(vk_up)) && (selectedWeek > 0) {
	audio_play_sound(scrollMenu, 10, false);
	selectedWeek--;
}
if (keyboard_check_pressed(vk_down)) && (selectedWeek < global.weeks) {
	audio_play_sound(scrollMenu, 10, false);
	selectedWeek++;
}

// dif change
if (keyboard_check_pressed(vk_left)) && (global.currentDif  > 0) {
	difOffset = -20;
	global.currentDif --;
}
if (keyboard_check_pressed(vk_right)) && (global.currentDif  < 2) {
	difOffset = -20;
	global.currentDif ++;
}
if (keyboard_check(vk_left)) leftArrowScaleTo = 0.8; else leftArrowScaleTo = 1;
if (keyboard_check(vk_right)) rightArrowScaleTo = 0.8; else rightArrowScaleTo = 1;

}
if (selected) selectedTimer++;
if (selectedTimer = 120) {
	o = instance_create_depth(x, 720, -1000, oFade);
	o.roomTo = MainGame;
	
	// weeks
	global.songOn = 0;
	if (selectedWeek = 0) {
		load_chart("Tutorial", global.currentDif);
		global.nextSong[0] = "n";
	}
	if (selectedWeek = 1) {
		load_chart("Bopeebo", global.currentDif);
		global.nextSong[0] = "Fresh";
		global.nextSong[1] = "Dadbattle";
		global.nextSong[2] = "n";
	}
	if (selectedWeek = 2) {
		load_chart("Spookeez", global.currentDif);
		global.nextSong[0] = "South";
		global.nextSong[1] = "n";
	}
	if (selectedWeek = 3) {
		load_chart("Pico", global.currentDif);
		global.nextSong[0] = "Philly";
		global.nextSong[1] = "Blammed";
		global.nextSong[2] = "n";
	}
	if (selectedWeek = 4) {
		load_chart("Satin_panties", global.currentDif);
		global.nextSong[0] = "High";
		global.nextSong[1] = "Milf";
		global.nextSong[2] = "n";
	}
}

leftArrowScale = lerp(leftArrowScale, leftArrowScaleTo, 0.3);
rightArrowScale = lerp(rightArrowScale, rightArrowScaleTo, 0.3);

if (difOffset < 0) difOffset += 2;