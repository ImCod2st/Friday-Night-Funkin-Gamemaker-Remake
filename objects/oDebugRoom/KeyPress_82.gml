/// @description Reset
var question = show_question("Reset the entire chart?");
if (question) ds_grid_clear(global.chart, 0);