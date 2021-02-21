// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_editor_notes(noteGrid, _x, _y) {
	var gridW = ds_grid_width(noteGrid);
	var gridH = ds_grid_height(noteGrid);
	
	for (var gY = 0; gY < gridH; gY++) {
		for (var gX = 0; gX < gridW; gX++) {
			if (ds_grid_get(noteGrid, gX, gY) != 0) {
				var sprToDraw = sNotes;
				var val = ds_grid_get(noteGrid, gX, gY);
				if (val < 0) sprToDraw = sDebugNotes;
				var sprX = _x + (gX * 40) + 20;
				var sprY = _y + (gY * 40) + 20;
				draw_sprite_ext(sprToDraw, gX, sprX, sprY, 0.28, 0.28, 0, c_white, 1);
				draw_text_color(sprX, sprY, val, c_black, c_black, c_black, c_black, 0.6);
				if (val > 1) draw_line_width(sprX, sprY, sprX, sprY + val * 6 + 15, 10);
			}
		}
	}
}