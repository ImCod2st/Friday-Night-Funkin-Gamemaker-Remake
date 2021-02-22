draw_set_font(global.font);

function draw_option(_y, num, _string, _bool) {
	if (curSelected != num) draw_set_color(c_ltgray);
	
	draw_text(10, _y, _string);
	
	draw_set_halign(fa_right);
	
	draw_text(1270, _y, bool_to_string(_bool));
	
	draw_set_halign(fa_left);
	draw_set_color(c_white);
}

draw_option(10, 0, "fullscreen", fullscreenOption);
draw_option(80, 1, "smoothing", smoothingOption);

draw_set_font(fntDefault);