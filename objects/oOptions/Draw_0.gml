draw_set_font(global.font);

function draw_option(_y, num, _string, _value, _isBool) {
	if (curSelected != num) draw_set_color(c_ltgray);
	
	draw_text(10, _y, _string);
	
	draw_set_halign(fa_right);
	
	if (_isBool) draw_text(1270, _y, bool_to_string(_value));
	if !(_isBool) draw_text(1270, _y, _value);
	
	draw_set_halign(fa_left);
	draw_set_color(c_white);
}

draw_option(10, 0, "fullscreen", fullscreenOption, true);
draw_option(80, 1, "smoothing", smoothingOption, true);
draw_option(150, 2, "offset", round(global.offset), false);
draw_option(220, 3, "advanced hud", global.advancedHud, true);
draw_option(290, 4, "set keybinds", "", false);

draw_set_font(fntDefault);