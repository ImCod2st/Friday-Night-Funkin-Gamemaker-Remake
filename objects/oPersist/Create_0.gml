global.chart = ds_grid_create(8, 16);
global.song = Tutorial_Inst;
global.voices = "";
global.bpm = 100;
global.noteSpeed = 5;
global.songName = "Tutorial";

global.weekPlaying = 0;
global.songOn = 0;
global.songScore[0] = 0;
global.nextSong[0] = "n";
global.currentDif = 1;

global.enemy = 0;
global.turn = true;

global.dead = false;
global.hudSurface = surface_create(1280, 720)
hudBopTimer = 0;
hudBopScale = 1;
hudBopVsp = 0;

global.freeplay = false;
global.weeks = 1;
for (var i = 0; i < global.weeks + 1; ++i) {
	global.weekScoreEasy[i] = 0;
	global.weekScoreNormal[i] = 0;
	global.weekScoreHard[i] = 0;
}

draw_set_font(fntDefault);
global.font = font_add_sprite_ext(sMessageFont, "abcdefghijklmnopqrstuvwxyz,", true, -2);
global.comboNumberFont = font_add_sprite_ext(sComboNumber, "0123456789-", true, -20);

enum notes {
	left,
	down,
	up,
	right
}

timeUntilMoveOn = 0;
load_data();