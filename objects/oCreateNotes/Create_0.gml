// if the chart exists, load the chart
// change the notespeed depending on mods
if (variable_global_exists("chart")) {
	if (global.fastnotes) or (global.slownotes) load_chart(global.songName, global.currentDif)
	
	if (global.fastnotes) global.noteSpeed += 3;
	if (global.slownotes) global.noteSpeed -= 3;
	
	create_notes(global.chart);
}