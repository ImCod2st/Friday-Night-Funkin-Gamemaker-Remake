// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_notes(noteGrid){
	for (var h = 0; h < ds_grid_height(noteGrid); ++h) {
		for (var w = 0; w < ds_grid_width(noteGrid); ++w) {
			if (ds_grid_get(noteGrid, w, h) != 0) {
				var noteY = (h * global.noteSpeed) * 13.3333333333;
				var noteX = 745;
				if (w = 0) noteX = 102;
				if (w = 1) noteX = 216;
				if (w = 2) noteX = 330;
				if (w = 3) noteX = 438;
				if (w = 4) noteX = 745;
				if (w = 5) noteX = 856;
				if (w = 6) noteX = 968;
				if (w = 7) noteX = 1081;
				n = instance_create_layer(noteX, 103 + noteY, "Notes", oNote);
				if (ds_grid_get(noteGrid, w, h) < 0) n.switchTurn = true;
				if (ds_grid_get(noteGrid, w, h) > 1) n.sliderLength = ds_grid_get(noteGrid, w, h) * 10;
			}
		}
	}
}