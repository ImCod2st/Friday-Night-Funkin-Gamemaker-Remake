updateVars();

mouseOver = undefined;

if !(is_undefined(selected)) && !(instance_exists(selected))
	selected = undefined;
	
with (all) {
	if (position_meeting(mouse_x, mouse_y, id)) {
		other.mouseOver = id;
		
		if (other.input == 0) && !(other.editMode) {
		
			if (mouse_check_button_pressed(mb_left)) && !(other.contextMenuOpen) {
				if (id != other.selected) other.editMode = false;
			
				other.selected = id;
				array_resize(other.winVars, 0);
			}
		
			if (mouse_check_button_pressed(mb_middle)) {
				other.dragging = id;
			
				other.contextMenuOpen = false;
			}
			
		}
	}
}

if (mouse_check_button_pressed(mb_right)) && !(editMode) {
	selected = mouseOver;
	if (keyboard_check(vk_shift)) selected = undefined;
	array_resize(other.winVars, 0);

	contextMenuOpen = true;	
	contextMenuScale = 0;
	contextMenuPos[0] = window_mouse_get_x() + 5;
	contextMenuPos[1] = window_mouse_get_y() + 5;	
}

// set selected vars

if !(is_undefined(selected)) {
	with (selected) {
		var vars = variable_instance_get_names(id);
		var varLeng = array_length(vars);
		
		for (var i = 0; i < varLeng; ++i) {
		   	other.winVars[i][0] = variable_instance_get(id, vars[i]);
			other.winVars[i][1] = vars[i];
		}
		
		// built-in vars
		other.winVarsB[0][0] = string(x) + ", " + string(y); other.winVarsB[0][1] = "XY";
		other.winVarsB[1][0] = depth; other.winVarsB[1][1] = "DEPTH";
		other.winVarsB[2][0] = direction; other.winVarsB[2][1] = "DIRECTION";
		other.winVarsB[3][0] = image_index; other.winVarsB[3][1] = "IMG INDEX";
		other.winVarsB[4][0] = image_speed; other.winVarsB[4][1] = "IMG SPEED";
		other.winVarsB[5][0] = id; other.winVarsB[5][1] = "ID";
	}
}

// scrolling

if (input == 0) {

	var shiftPressed = keyboard_check(vk_shift);
	if (mouse_wheel_up()) {
		if !(shiftPressed) scrollY--;
		else scrollX--;
	}
	if (mouse_wheel_down()) {
		if !(shiftPressed) scrollY++;
		else scrollX++;
	}

}

if (scrollY < 0) scrollY = 0;
if (scrollX < 0) scrollX = 0;

// dragging
if !(is_undefined(dragging)) && !(instance_exists(dragging))
	dragging = undefined;

if !(is_undefined(dragging)) {	
	dragging.x = mouse_x - (dragging.sprite_width / 2 - dragging.sprite_xoffset);
	dragging.y = mouse_y - (dragging.sprite_height / 2 - dragging.sprite_yoffset);
	
	if (mouse_check_button_released(mb_middle))
	dragging = undefined;
}

// pin
if (editMode) {
	if (mouse_check_button_pressed(mb_middle)) {
		var array = winVars;
		if (globalMode) array = winGlobalVars;
		
		var startAt = clamp(scrollY, 0, array_length(array) - 1);
		var varName = array[startAt][1];
		var arrayLeng = array_length(pinnedVars);

		var create = true;
		var posToRemove = 0;
		for (var i = 1; i < array_length(pinnedVars); ++i) {
			if (pinnedVars[i][1] == varName) && (pinnedVars[i][2] == selected.id) {
				create = false;
				posToRemove = i;
			}
		}
		
		if (create) {
			pinnedVars[arrayLeng][0] = 0; // name
			pinnedVars[arrayLeng][1] = varName; // name
			pinnedVars[arrayLeng][2] = selected.id; // object
		} else {
			array_delete(pinnedVars, posToRemove, 1);	
		}
	}
}

for (var i = 1; i < array_length(pinnedVars); ++i) {
	if !(instance_exists(pinnedVars[i][2])) {
		array_delete(pinnedVars, i, 1);
	}
}