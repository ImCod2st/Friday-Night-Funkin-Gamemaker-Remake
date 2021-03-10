hoveredMod = -1;
function modCreate(_x, _y, modIndex, variableToUse) {
	var value = variable_global_get(variableToUse);
	
	var scale = 0.9;
	var alpha = 1;
	if !(value) {
		scale = 0.8;
		alpha = 0.4;
		modsSelected[modIndex] = false;
	} else {
		modsSelected[modIndex] = true;
	}
	
	modsScale[modIndex] = lerp(scale, modsScale[modIndex], 0.7);
	
	var trueX = x + 90 * _x + 1;
	var trueY = y + 90 * _y + 1;
	draw_sprite_ext(sMods, modIndex, trueX, trueY, modsScale[modIndex] / 2, modsScale[modIndex] / 2, 0, c_white, alpha);
	
	if (point_in_rectangle(mouse_x, mouse_y, trueX - 40, trueY - 40, trueX + 40, trueY + 40)) {
		hoveredMod = modIndex;
		if (mouse_check_button_pressed(mb_left)) {
			variable_global_set(variableToUse, !value);
			
			// special cases
			if (global.fastnotes) && (modIndex = 2) global.fastnotes = false;
			if (global.slownotes) && (modIndex = 1) global.slownotes = false;
			
			if (global.nofail) && (modIndex = 6) global.nofail = false;
			if (global.fragile) && (modIndex = 4) global.fragile = false;
		}
	}
}

modCreate(0, 0, 0, "auto");
modCreate(1, 0, 1, "fastnotes");
modCreate(2, 0, 2, "slownotes");
modCreate(3, 0, 3, "vanish");

modCreate(0, 1, 4, "nofail");
modCreate(1, 1, 6, "fragile");
modCreate(2, 1, 5, "flashlight");
modCreate(3, 1, 7, "flipped");

draw_set_halign(fa_center);

if (hoveredMod != -1) {
	draw_text(x + 135, y - 120, modsName[hoveredMod]);
	draw_text(x + 135, y - 90, modsDesc[hoveredMod]);
	draw_text(x + 135, y + 150, string(modsMultiplier[hoveredMod]) + "x");
}
draw_text(x + 135, y + 170, string(totalMulti) + "x Total Multiplier");

draw_set_halign(fa_left);