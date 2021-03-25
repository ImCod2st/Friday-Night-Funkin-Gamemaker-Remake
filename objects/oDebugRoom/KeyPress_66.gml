/// @description BPM
var bpm = get_integer("BPM:", global.bpm);
if (bpm = 0) or (bpm = undefined) exit;
global.bpm = bpm;