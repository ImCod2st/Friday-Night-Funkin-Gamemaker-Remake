// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_notes(noteGrid){
	for (var h = 0; h < ds_grid_height(noteGrid); ++h) {
		for (var w = 0; w < ds_grid_width(noteGrid); ++w) {
			if (ds_grid_get(noteGrid, w, h) != 0) {
				var noteY = (h * global.noteSpeed) * (100 / (global.camSpeed / 48)) + global.offset;
				var noteX = 745;
				if !(global.flipped) {
					if (w = 0) noteX = 102;
					if (w = 1) noteX = 216;
					if (w = 2) noteX = 330;
					if (w = 3) noteX = 438;
					if (w = 4) noteX = 745;
					if (w = 5) noteX = 856;
					if (w = 6) noteX = 968;
					if (w = 7) noteX = 1081;
				} else {
					if (w = 0) noteX = 102;
					if (w = 1) noteX = 216;
					if (w = 2) noteX = 330;
					if (w = 3) noteX = 438;
					if (w = 4) noteX = 1081;
					if (w = 5) noteX = 968;
					if (w = 6) noteX = 856;
					if (w = 7) noteX = 745;
				}
				n = instance_create_layer(noteX, 103 + noteY, "Notes", oNote);
				
				var val = ds_grid_get(noteGrid, w, h);
				if (val > -1) && (val < 1) n.yOff = (1 - val) * 50;
				
				if (val = -1) n.switchTurn = true;
				if (val = -2) n.bfHey = true;
				if (val = -3) n.useAlt = true;
				
				if (val <= -1) n.notRealNote = true;
				if (val > 1) n.sliderLength = val * 10;
			}
		}
	}
}