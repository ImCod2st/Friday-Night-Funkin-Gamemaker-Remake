draw_set_font(global.font);

function draw_option(_y, num, _string, _tip, _value, _isBool) {
	if (curSelected != num) draw_set_color(c_ltgray);
	
	draw_text(10, _y, _string);
	
	draw_set_halign(fa_right);
	
	if (_isBool) draw_text(1270, _y, bool_to_string(_value));
	if !(_isBool) draw_text(1270, _y, _value);
	
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	
	// draw tip
	if (curSelected = num) {
		draw_set_halign(fa_center);
		draw_set_valign(fa_bottom);
		
		draw_text_transformed(640, 720, string_lower(_tip), 0.6, 0.6, 0);
		
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	}
}

draw_option(10, 0, "fullscreen", "Switch between fullscreen & windowed mode.", fullscreenOption, true);
draw_option(80, 1, "smoothing", "Fixes jagged edges around most sprites.", smoothingOption, true);
draw_option(150, 2, "offset", "Negative Numbers - Late\nPositive Numbers - Early", round(global.offset), false);
draw_option(220, 3, "advanced hud", "Adds extra information under the health bar.", global.advancedHud, true);
draw_option(290, 4, "input", "Default - FNF Input System\nKade - KadeDevs Input System (Whitty)", currentInputString[currentInput], false);
draw_option(360, 5, "set keybinds", "Change your keybinds.", "", false);

draw_set_font(fntDefault);