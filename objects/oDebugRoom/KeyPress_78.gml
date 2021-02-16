/// @description Notespeed
var noteSpd = get_integer("Notespeed:", global.noteSpeed);
if (noteSpd = 0) exit;
global.noteSpeed = noteSpd;