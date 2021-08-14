gameWidth = window_get_width();
gameHeight = window_get_height();

scrollX = 0;
scrollY = 0;

version = "v1.0.0";

enum debugColors {
	window = c_dkgray,
	windowTop = c_blue,
	contextMenu = c_dkgray,
	contextMenuSelect = c_blue
}
spacing = 15;

FONT_MAIN = "MS Sans Serif";

enum winGameVar {
	x = 40,
	y = 40,
	width = 240,
	height = -1
}
winGameVars[0][1] = 0;

enum winGlobalVar {
	x = 40,
	y = 110,
	width = 220,
	height = -1
}
winGlobalVars[0][0] = "";
winGlobalVars[0][1] = "N/A";

enum winVar {
	x = 1000,
	y = 40,
	width = 240,
	height = -1
}
winVars[0][1] = 0;
winVarsB[0][1] = 0;

enum pinnedVar {
	x = 780,
	x2 = 1040,
	y = 40,
	width = 200,
	height = -1
}
pinnedVars[0][1] = ""; // name
pinnedVars[0][2] = 0; // object

contextMenuOpen = false;
contextMenuScale = 0;
contextMenuPos[0] = 0; // x
contextMenuPos[1] = 0; // y
contextMenuOptions = ["Edit", "Delete"] // default
contextMenuOptionsOther = ["Edit Globals"] // clicking not on a object

selected = undefined;
mouseOver = undefined;
dragging = undefined;

editMode = false;
globalMode = false;
input = 0;
inputUIScale = 0;
openedInput = 0;

function updateVars() {
	// game vars
	winGameVars[0][0] = fps; winGameVars[0][1] = "FPS";
	winGameVars[1][0] = fps_real; winGameVars[1][1] = "REAL FPS";
	
	// global vars
	var vars = variable_instance_get_names(global);
	var varLeng = array_length(vars);
	
	for (var i = 0; i < varLeng; ++i) {
		winGlobalVars[i][0] = variable_global_get(vars[i]);
		winGlobalVars[i][1] = vars[i];
	}
	
	for (var i = 0; i < array_length(pinnedVars); ++i) {
		pinnedVars[i][0] = variable_instance_get(pinnedVars[i][2], pinnedVars[i][1]);
	}
}
updateVars();

function string_digits_decimal(_str) {
	var finalStr = string_digits(_str);
	var pos = string_pos(".", _str);
	var posNeg = string_pos("-", _str);
	
	if (pos != 0) finalStr = string_insert(".", finalStr, pos);
	if (posNeg != 0) finalStr = string_insert("-", finalStr, posNeg);
	
	return finalStr;
}

FONT_MAIN = font_add(FONT_MAIN, 12, false, false, 32, 128);