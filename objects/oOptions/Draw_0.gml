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

// categorys
function draw_category(_x, _y, _category, _text) {
	draw_set_halign(fa_center);
	if (curSelected != 0) draw_set_alpha(0.5);
	draw_set_color(c_ltgray);
	if (category = _category) draw_set_color(c_white);
	
	draw_text(_x, _y, _text);
	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
}
draw_category(213.333333333, 10, 0, "options");
draw_category(640, 10, 1, "graphics");
draw_category(1066.66666667, 10, 2, "keybinds");

if (category = 0) {
	draw_option(80, 1, "fullscreen", "Switch between fullscreen & windowed mode.", fullscreenOption, true);
	draw_option(150, 2, "offset", "Negative Numbers - Late\nPositive Numbers - Early\nShift = +5", round(global.offset), false);
	draw_option(220, 3, "advanced hud", "Adds extra information under the health bar.", global.advancedHud, true);
	draw_option(290, 4, "discord", "Shows what song you are playing in discord.\n(Requires Restart)", discord, true);
	draw_option(360, 5, "downscroll", "Notes scroll downwards instead of up.\nSimilar to osu!mania.", global.downScroll, true);
}
if (category = 1) {
	draw_option(80, 1, "anti-aliasing", "Fixes jagged edges around most sprites.", smoothingOption, true);
	draw_option(150, 2, "particles", "Toggle the particles that appear\nwhen you get a SICK.", global.particles, true);
	draw_option(220, 3, "custom freeplay", "Toggle the custom freeplay art.\nBy @Im~Lotter on Twitter", global.customFreeplay, true); 
	draw_option(290, 4, "preload", "Preload sprites increases loading times decreases lag.", global.preload, true);
}
if (category = 2) {
	draw_option(80, 1, "left", "", string_lower(chr(global.leftKeybind)), false);
	draw_option(150, 2, "down", "", string_lower(chr(global.downKeybind)), false);
	draw_option(220, 3, "up", "", string_lower(chr(global.upKeybind)), false);
	draw_option(290, 4, "right", "", string_lower(chr(global.rightKeybind)), false);
	
	draw_option(430, 5, "accept", "", string_lower(chr(global.acceptKeybind)), false);
	draw_option(500, 6, "back", "", string_lower(chr(global.backKeybind)), false);
}

draw_set_font(fntDefault);