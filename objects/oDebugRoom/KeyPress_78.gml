/// @description Notespeed
var noteSpd = get_integer("Notespeed:", global.noteSpeed);
if (noteSpd = 0) or (noteSpd = undefined) exit;
global.noteSpeed = noteSpd;