function drawOutline(_x, _y, _color) {
	draw_set_color(_color);
	
	var _xNew = _x - sprite_xoffset;
	var _yNew = _y - sprite_yoffset;
	draw_rectangle(_xNew, _yNew, _xNew + sprite_width, _yNew + sprite_height, true);
	
	draw_set_color(c_white);
}

if !(is_undefined(mouseOver)) {
	with (mouseOver) {
		drawOutline(x, y, c_white);
	}
}

if !(is_undefined(selected)) {
	with (selected) {
		drawOutline(x, y, c_yellow);
	}
}