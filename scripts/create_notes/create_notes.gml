// create the notes depending on the current loaded map
// i hate this script so much why does it work why does it work why does it work
function create_notes(noteGrid){
	for (var h = 0; h < ds_grid_height(noteGrid); ++h) {
		for (var w = 0; w < ds_grid_width(noteGrid); ++w) {
			if (ds_grid_get(noteGrid, w, h) != 0) {
				
				// get the y the note is needed to be created at using bullshit math
				var noteY = ((h * (global.noteSpeed + (0.01*h*global.accelnotes))) * (100 / (global.camSpeed / 48))) + global.offset;
				var noteX = 745;
				
				// choose the x position for the notes
				switch (w) {
					case 0: noteX = 102; break;
					case 1: noteX = 216; break;
					case 2: noteX = 330; break;
					case 3: noteX = 438; break;
					case 4: noteX = 745; break;
					case 5: noteX = 856; break;
					case 6: noteX = 968; break;
					case 7: noteX = 1081; break;
				}
				if (global.flipped) { // if the flipped mod is on, change the note positions
					switch (w) {
						case 4: noteX = 1081; break;
						case 5: noteX = 968; break;
						case 6: noteX = 856; break;
						case 7: noteX = 745; break;
					}
				}
				// create the note
				n = instance_create_layer(noteX, 103 + noteY, "Notes", oNote);
				n.noteRangeDetermine = h;
				
				// get the notes value from the grid
				var val = ds_grid_get(noteGrid, w, h);
				if (val > -1) && (val < 1) n.yOff = (1 - val) * 50;
				if (val > 1) n.sliderLength = val * 10;
				
				// -1 = camera switch, -2 - bf hey animation, -3 - use the alternate enemy animation (week 5)
				if (val = -1) n.switchTurn = true;
				if (val = -2) n.bfHey = true;
				if (val = -3) n.useAlt = true;
				
				// make the not unable to be hit if its not a real note
				if (val <= -1) n.notRealNote = true;
			}
		}
	}
}