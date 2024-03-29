// debug
draw_text_transformed(0, -2, "FPS: " + string(fps), 0.6, 0.6, 0);

// volume display
if (keyboard_check_pressed(189)) { global.volume -= 0.1; audio_play_sound(clickText, 0, false); volumeDisplay = 120; }
if (keyboard_check_pressed(187)) { global.volume += 0.1; audio_play_sound(clickText, 0, false); volumeDisplay = 120; }

// if the volume display has been changed, make the volume ui appear
if (volumeDisplay > 0) {
	volumeDisplay--;
	var width = 80;
	draw_set_color(c_black);
	draw_set_alpha(clamp(volumeDisplay * 0.05, 0, 1) - 0.1);
	
	draw_rectangle(640 - width, 0, 640 + width, 60, false);
	draw_healthbar(640 - (width - 10), 10, 640 + (width - 10),20, (global.volume * 100) - 1, c_black, c_gray, c_white, 0, false, false);
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	
	draw_text(640, 25, "VOLUME");
	
	draw_set_halign(fa_left);
	draw_set_alpha(1)
}

// ranking screen
if (timeUntilMoveOn >= 420) {
	var curMiss = oHUD.missCount;
	var curHit = oHUD.hitCount;
	var acc = curHit / (curHit + curMiss);
	show_debug_message(acc);
	var rank = 0; // ss
	if (acc > 0) rank = 1; // s
	if (acc <= 0.05) rank = 2; // a
	if (acc <= 0.15) rank = 3; // b
	if (acc <= 0.3) rank = 3; // c
	if (acc <= 0.5) rank = 4; // d
	
	
	draw_sprite(sRank, rank, 300, 300);
		
}