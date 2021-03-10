draw_text(1003, 105, "Song Name: " + global.songName);

draw_text(1003, 125, "Song File: " + audio_get_name(global.song));

var voiceFile = "";
if (global.voices != "") voiceFile = audio_get_name(global.voices);
draw_text(1003, 145, "Vocals File: " + voiceFile);


draw_text(1003, 175, "Notespeed: " + string(global.noteSpeed));
draw_text(1003, 195, "BPM: " + string(global.bpm));
draw_text(1003, 215, "Enemy: " + string(global.enemy));

var difName = "Easy";
if (dif = 1) difName = "Normal";
if (dif = 2) difName = "Hard";
draw_text(1003, 235, "Difficulty: " + string(difName));
draw_text(1003, 255, "Cam Speed: " + string(global.camSpeed));

draw_text_ext(1003, 455, "Controls:\nS = Save\nL = Load\nN = Notespeed\nB = BPM\nO = Song\nP = Vocals\nE = Enemy\nD = Difficulty\nC = Cam Speed\n\nR = Reset", 20, 10000000);