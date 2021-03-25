options[0] = "finish"; 
options[1] = "vocal file";
options[2] = "song file";
options[3] = "bpm";
options[4] = "notespeed";
options[5] = "difficulty";
options[6] = "enemy";
options[7] = "name";
options[8] = "open song...";

json_NoteOutput = undefined;
json_Enemy = 1;
json_CamSpeed = 0;
json_BPM = 180;
json_NoteSpeed = 450;
json_VoiceFile = "undefined";
json_SongFile = "undefined";
json_SongName = "Name";
json_Difficulty = 1;

curSelected = array_length(options) - 1;
lastSelected = -1;

yOffset = array_create(array_length(options))
xOffset = array_create(array_length(options))

difName[0] = "Easy";
difName[1] = "Normal";
difName[2] = "Hard";