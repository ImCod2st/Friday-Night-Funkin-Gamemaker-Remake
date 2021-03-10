for (var i = 0; i < ds_grid_height(global.chart) / 2; ++i) {
	draw_sprite(sDebugEditorGrid, 0, x, y + (i * gridSize * 2))
}

draw_rectangle_color(selBoxX, selBoxY, selBoxX + gridSize - 1, selBoxY + gridSize - 1, c_white, c_white, c_white, c_white, false);
if !(dontDraw) draw_editor_notes(global.chart, x, y);

// character heads
var headLeft = 4;
var headRight = 0;

draw_sprite_ext(sIcons, headLeft, x + 80, y - 30, 0.3, 0.3, 0, c_white, 1);
draw_sprite_ext(sIcons, headRight, x + 160 + 80, y - 30, 0.3, 0.3, 0, c_white, 1);