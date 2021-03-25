animate += 0.08;
if !(selected) bfAnimate = animate;
else if (bfAnimate < 2) bfAnimate += 0.08;	

yOffset = lerp(yOffset, yOffsetTo, 0.1);
yOffsetTo = selectedWeek * 120;

// week change
if !(selected) {

if (keyboard_check_pressed(vk_enter))
|| (keyboard_check_pressed(vk_space))
|| (gamepad_button_check_pressed(global.controller, gp_face1))
|| (gamepad_button_check_pressed(global.controller, gp_start)) {
	if (selected) exit;
	if (global.currentDif != 2) && !(keyboard_check(vk_shift)) exit; // TEMP BECAUSE I HAVE YET TO FINISH THE OTHER DIFS
	
	global.freeplay = false;
	global.songOn = 0;
	selected = true;
	audio_play_sound(confirmMenu, 100, false);
	bfAnimate = 0;
	global.weekPlaying = selectedWeek;
}

if (keyboard_check_pressed(vk_backspace))
|| (gamepad_button_check_pressed(global.controller, gp_face2)) {
	if (instance_exists(oFade)) exit;

	audio_play_sound(cancelMenu, 10, false);
	o = instance_create_depth(0, 0, -10000, oFade);
	o.roomTo = MainMenu;
}

if ((keyboard_check_pressed(vk_up)) 
|| (gamepad_button_check_pressed(global.controller, gp_padu))) {
	audio_play_sound(scrollMenu, 10, false);
	if (selectedWeek > 0) selectedWeek--;
	else selectedWeek = global.weeks;
}
if ((keyboard_check_pressed(vk_down)) 
|| (gamepad_button_check_pressed(global.controller, gp_padd))) {
	audio_play_sound(scrollMenu, 10, false);
	if (selectedWeek < global.weeks) selectedWeek++;
	else selectedWeek = 0;
}

// dif change
var maxDif = 2;
if ((keyboard_check_pressed(vk_left)) 
|| (gamepad_button_check_pressed(global.controller, gp_padl))) {
	difOffset = -20;
	if (global.currentDif > 0) global.currentDif--;
	else global.currentDif = maxDif;
}
if ((keyboard_check_pressed(vk_right)) 
|| (gamepad_button_check_pressed(global.controller, gp_padr))) {
	difOffset = -20;
	if (global.currentDif < maxDif) global.currentDif++;
	else global.currentDif = 0;
}

if ((keyboard_check(vk_left)) 
|| (gamepad_button_check(global.controller, gp_padl))) leftArrowScaleTo = 0.8; 
	else leftArrowScaleTo = 1;
	
if ((keyboard_check(vk_right)) 
|| (gamepad_button_check(global.controller, gp_padl))) rightArrowScaleTo = 0.8; 
	else rightArrowScaleTo = 1;

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
	if (selectedWeek = 5) {
		load_chart("Cocoa", global.currentDif);
		global.nextSong[0] = "Eggnog";
		global.nextSong[1] = "Winter_horrorland";
		global.nextSong[2] = "n";
	}
	if (selectedWeek = 6) {
		load_chart("Senpai", global.currentDif);
		global.nextSong[0] = "Roses";
		global.nextSong[1] = "Thorns";
		global.nextSong[2] = "n";
	}
}

leftArrowScale = lerp(leftArrowScale, leftArrowScaleTo, 0.3);
rightArrowScale = lerp(rightArrowScale, rightArrowScaleTo, 0.3);

if (difOffset < 0) difOffset += 2;