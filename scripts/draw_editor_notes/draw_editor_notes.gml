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
				draw_sprite_ext(sprToDraw, gX, _x + (gX * 40) + 20, _y + (gY * 40) + 20, 0.28, 0.28, 0, c_white, 1);
				draw_text_color(_x + (gX * 40) + 20, _y + (gY * 40) + 20, ds_grid_get(noteGrid, gX, gY), c_black, c_black, c_black, c_black, 0.6);
				if (val > 1) draw_line_width(x, y, x, y + ds_grid_get(noteGrid, gX, gY), 5);
			}
		}
	}
}