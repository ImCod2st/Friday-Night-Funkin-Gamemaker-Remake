draw_set_font(FONT_MAIN);

draw_set_color(c_red);
draw_rectangle(0, 0, gameWidth, 10, false);
draw_set_color(c_white);

// game variables box
function varBox(_x, _y, _w, _h, title, varArray, type) {
	
	var startAt = clamp(scrollY, 0, array_length(varArray));
	if (type == "donthide") startAt = 0;
	if (type == "pinned") startAt = 1;
	
	draw_set_alpha(0.5);
	draw_set_color(debugColors.windowTop);
	
	draw_rectangle(_x, _y, _x + _w, _y + 20, false);
	
	draw_set_color(debugColors.window);
	
	if (_h < 0) _h = (spacing*(array_length(varArray)-startAt)) + 15;
	draw_rectangle(_x, _y, _x + _w, ((_y + 20) + _h), false);

	draw_set_color(c_white);
	draw_set_alpha(1);
	
	if (type == "object") title += " (" + object_get_name(selected.object_index) + ")";
	draw_text(_x, _y, title);
	
	var maxLength = 22;
	if (type == "pinned") maxLength = 19;
	
	for (var i = startAt; i < array_length(varArray); ++i) {
		var txt = varArray[i][1] + ": " + string(varArray[i][0]);
		
		if (scrollX > string_length(txt)) continue;
		txt = string_copy(txt, scrollX, maxLength);
		
		if (editMode) && (i = startAt) {
			if (type == "object") or ((type == "global") && globalMode) {
				draw_set_color(c_yellow);
				txt = "> " + txt;
			}
		}
		
		if (type == "pinned") && !(is_undefined(selected)) && (varArray[i][2] == selected.id)
			draw_set_color(c_yellow);
		
		draw_text(_x + 10, _y + (spacing * (i-startAt)) + 25, txt);
		
		draw_set_color(c_white);
	}
}

varBox(winGameVar.x, winGameVar.y, winGameVar.width, winGameVar.height,
"Game Vars", winGameVars, "donthide");

varBox(winGlobalVar.x, winGlobalVar.y, winGlobalVar.width, winGlobalVar.height,
"Global Vars", winGlobalVars, "global");

if !(is_undefined(selected)) && (instance_exists(selected)) {
	
varBox(winVar.x, winVar.y, winVar.width, winVar.height,
"Variables", winVars, "object");

var _y = 600;
var startAt = clamp(scrollY, 0, array_length(winVars));
if (winVar.height < 0) _y = (spacing*(array_length(winVars)-startAt)) + 80;

varBox(winVar.x, _y, winVar.width, -1,
"Built-In Vars", winVarsB, "donthide");

}

if (array_length(pinnedVars) > 1) {
	
var newX = pinnedVar.x;
if (is_undefined(selected))
	newX = pinnedVar.x2;
varBox(newX, pinnedVar.y, pinnedVar.width, pinnedVar.height,
"Pinned Vars", pinnedVars, "pinned");

}

// draw sprite

if !(is_undefined(selected)) {
	var selectSpr = selected.sprite_index;
	var _x = 1120;
	var _y = 560;
	
	draw_set_alpha(0.6);

	if (selectSpr != -1)
		draw_sprite_stretched(selectSpr, selected.image_index, _x, _y, 150, 150);
	
	draw_set_alpha(1);
}

// edit mode

var canEdit = !(is_undefined(selected)) or globalMode;

if (editMode) && canEdit && (input == 0) {
	var array = winVars;
	if (globalMode)
		array = winGlobalVars;
	
	draw_set_halign(fa_center);
	
	var startAt = clamp(scrollY, 0, array_length(array) - 1);
	var varName = array[startAt][1];
	var _x = gameWidth / 2;
	
	var txt = "Edit " + "global." + varName + "?";
	if !(globalMode) 
		txt = "Edit " + varName + " of " + object_get_name(selected.object_index) + "?";
	
	draw_text_transformed(_x, 50, txt, 1.4, 1.4, 0);
	draw_text(_x, 80, "(Left Click to Confirm)\n(Right Click to exit Edit Mode)");
	
	draw_set_halign(fa_left);
	
	if (mouse_check_button_pressed(mb_left)) {
		if !(globalMode)
			var oldVal = variable_instance_get(selected, varName);
		else
			var oldVal = variable_global_get(varName);
		
		keyboard_string = string(oldVal);
		
		if (is_string(oldVal)) input = 2;
		else if (is_real(oldVal)) input = 1;
		else show_message("This type of value is not currently supported.\nSorry.");
		
		openedInput = true;
	}
	
	if (mouse_check_button_pressed(mb_right))
		editMode = false;
}
if !(canEdit) editMode = false

// context meny

var lerpTo = 0;
if (contextMenuOpen)
	lerpTo = 1;
contextMenuScale = lerp(contextMenuScale, lerpTo, 0.1);

var option = contextMenuOptions;
if (selected == undefined)
	option = contextMenuOptionsOther;

var _x = contextMenuPos[0];
var _y = contextMenuPos[1];
var _w = 80;
var _h = (array_length(option)*40);
var _rh = contextMenuScale * _h;
if (_rh < 2) _rh = -1;

if (selected == undefined) && (contextMenuOpen)
	_w = 140;

draw_set_color(debugColors.contextMenu);

draw_rectangle(_x, _y, _x + _w, _y + _rh, false);

draw_set_color(c_white);

if (contextMenuOpen) {

	draw_set_alpha(contextMenuScale);

	var mx = window_mouse_get_x();
	var my = window_mouse_get_y();
	
	for (var i = 0; i < array_length(option); ++i) {
		var menuY = _y + (i*40);
		
		if (point_in_rectangle(mx, my, _x, menuY, _x + _w, menuY + 30)) {
			draw_set_color(debugColors.contextMenuSelect);
			
			draw_rectangle(_x, menuY, _x + _w, menuY + 39, false);
			
			draw_set_color(c_white);
			
			if (mouse_check_button_pressed(mb_left)) {
				contextMenuOpen = false;
				
				switch (i) {
					case 0:
						editMode = true;
						
						globalMode = false;
						if (selected == undefined)
							globalMode = true;
							
						break;
					case 1:
						instance_destroy(selected);
						break;
				}
			}
		}
		else if (mouse_check_button_pressed(mb_left))
			contextMenuOpen = false;
		
		draw_text(_x + 10, menuY + 10, option[i]);
	}

	draw_set_alpha(1);

}

// input ui

if (input == 0)
	inputUIScale = lerp(inputUIScale, 1, 0.1);
else
	inputUIScale = lerp(inputUIScale, 0, 0.1);

if (input != 0) {
	var inputUIY = (inputUIScale * -10)
	
	draw_set_alpha(0.5);
	
	draw_rectangle_color(0, 0, gameWidth, gameHeight, c_gray, c_black, c_black, c_black, false);

	draw_set_alpha(1);
	
	var valueEditing = "Integer";
	if (input = 1) && (floor(real(keyboard_string)) != real(keyboard_string)) valueEditing = "Float";
	if (input = 2) valueEditing = "String";
	
	if (input = 1) keyboard_string = string_digits_decimal(keyboard_string);
	var finalString = keyboard_string;
	
	draw_set_halign(fa_center);
	
	draw_text_transformed(gameWidth / 2, 180 + inputUIY, "Editing a " + valueEditing, 1.6, 1.6, 0);
	draw_text_transformed(gameWidth / 2, 220 + inputUIY, "> " + string(finalString) + " <", 3, 3, 0);
	
	draw_text(gameWidth / 2, 400 + inputUIY, "(Enter or Left Click to confirm)\n(Right Click to cancel)");
	
	draw_set_halign(fa_left);
	
	if (keyboard_check_pressed(vk_enter)) or (mouse_check_button_pressed(mb_left)) && !(openedInput) {
		var array = winVars;
		if (globalMode) array = winGlobalVars;
		
		var startAt = clamp(scrollY, 0, array_length(array) - 1);
		var varName = array[startAt][1];
		
		if (finalString == "") && (input = 1) finalString = "0";
		if (input = 1) finalString = real(finalString);
		
		if !(globalMode)
			variable_instance_set(selected, varName, finalString);
		if (globalMode)
			variable_global_set(varName, finalString);
		
		input = 0;
	}
	
	if (input = 1) {
		var change = (mouse_wheel_up() - mouse_wheel_down());
		if (keyboard_check(vk_shift)) change = change * 0.1;
		
		var cur = keyboard_string;
		if (cur == "") cur = "0";
		if (change != 0) keyboard_string = string(real(cur) + change);
	}
	
	if (mouse_check_button_pressed(mb_right))
		input = 0;	
}
openedInput = false;

// version
draw_text(0, 700, "CodDebugger " + version);