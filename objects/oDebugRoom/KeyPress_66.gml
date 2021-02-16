/// @description BPM
var bpm = get_integer("BPM:", global.bpm);
if (bpm = 0) exit;
global.bpm = bpm;