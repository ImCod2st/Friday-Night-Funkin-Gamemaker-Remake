var mouseX = mouse_x - 20;
var mouseY = mouse_y - 2;
selBoxX = (round(mouseX/gridSize) * gridSize);
selBoxY = (round(mouseY/gridSize) * gridSize) - 18;

if (room_height / 40 > ds_grid_height(global.chart)) ds_grid_resize(global.chart, 8, room_height / 40)

var selectedList = global.chart;

var notePosX = -(x - selBoxX) / gridSize;
var notePosY = -(y - selBoxY) / gridSize;

if (fnfBotMode) {
	if (keyboard_check_pressed(vk_anykey)) {
		if !(fnfBotEnemy) {
			notePosX = 4;
			if (keyboard_check(vk_down)) notePosX = 5;
			if (keyboard_check(vk_up)) notePosX = 6;
			if (keyboard_check(vk_right)) notePosX = 7;
		} else {
			notePosX = 0;
			if (keyboard_check(vk_down)) notePosX = 1;
			if (keyboard_check(vk_up)) notePosX = 2;
			if (keyboard_check(vk_right)) notePosX = 3;	
		}
		
		selBoxY = (round((oEditorCamera.y - 10)/gridSize) * gridSize) - 18;
		notePosY = -(y - selBoxY) / gridSize;
	}
}

if (mouse_check_button_pressed(mb_left)) or (keyboard_check_pressed(vk_anykey)) && (fnfBotMode) {
	if (ds_grid_get(selectedList, notePosX, notePosY) = 0) {
		ds_grid_set(selectedList, notePosX, notePosY, 1);
	} else {
		if (fnfBotMode) exit;
		ds_grid_set(selectedList, notePosX, notePosY, 0);	
	}
}

if (mouse_check_button_pressed(mb_middle)) {
	if (ds_grid_get(selectedList, notePosX, notePosY) = 1) {
		var def = -1;
		if (keyboard_check(vk_control)) def = -2;
		if (keyboard_check(vk_alt)) def = -3;
		
		ds_grid_set(selectedList, notePosX, notePosY, def);
	} else if (ds_grid_get(selectedList, notePosX, notePosY) < 0) {
		ds_grid_set(selectedList, notePosX, notePosY, 1);
	}
}

// change length
if (keyboard_check(vk_shift)) {
	if (mouse_wheel_down()) {
		var curVal = ds_grid_get(selectedList, notePosX, notePosY);
		ds_grid_set(selectedList, notePosX, notePosY, curVal + 1);
	}
	if (mouse_wheel_up()) {
		var curVal = ds_grid_get(selectedList, notePosX, notePosY);
		if (curVal > 1) ds_grid_set(selectedList, notePosX, notePosY, curVal - 1);
	}
}

// change offset
if (keyboard_check(vk_tab)) {
	if (mouse_wheel_down()) {
		var curVal = ds_grid_get(selectedList, notePosX, notePosY);
		ds_grid_set(selectedList, notePosX, notePosY, curVal + 0.01);
	}
	if (mouse_wheel_up()) {
		var curVal = ds_grid_get(selectedList, notePosX, notePosY);
		ds_grid_set(selectedList, notePosX, notePosY, curVal - 0.01);
	}
}