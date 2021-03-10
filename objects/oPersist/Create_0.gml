global.chart = ds_grid_create(8, 16);
global.song = Tutorial_Inst;
global.voices = "";
global.bpm = 100;
global.noteSpeed = 5;
global.camSpeed = 360; // 225 is 1 in real game
global.songName = "Tutorial";

global.weekPlaying = 0;
global.songOn = 0;
global.songScore[0] = 0;
global.nextSong[0] = "n";
global.currentDif = 1;

global.enemy = 0; // 0 - gf, 1 - dad, 2 - spooky, 3 - monster, 4 - pico, 5 - mom, 6/7 - parents c
// special enemys 100/101 - whitty, 102 - oxi
global.turn = true;

global.dead = false;
global.camWidth = 1280;
global.camHeight = 720;
global.hudSurface = surface_create(1280, 720)
hudBopTimer = 0;
hudBopScale = 1;
hudBopVsp = 0;

// mods
global.auto = false;
global.fastnotes = false;
global.slownotes = false;
global.vanish = false;
global.nofail = false;
global.flashlight = false;
global.fragile = false;
global.flipped = false;

// settings
global.offset = 0;
global.advancedHud = true;
global.volume = 1;

global.freeplay = false;
global.weeks = 4;
for (var i = 0; i < global.weeks + 1; ++i) {
	global.weekScoreEasy[i] = 0;
	global.weekScoreNormal[i] = 0;
	global.weekScoreHard[i] = 0;
}

draw_set_font(fntDefault);
global.font = font_add_sprite_ext(sMessageFont, "abcdefghijklmnopqrstuvwxyz,_0123456789-.:", true, -2);
global.comboNumberFont = font_add_sprite_ext(sComboNumber, "0123456789-x", true, -20);

enum notes {
	left,
	down,
	up,
	right
}

volumeDisplay = 0;
timeUntilMoveOn = 0;

global.useProgramDir = true;
if (program_directory = "X:\\windows\\") global.useProgramDir = false;
load_data();

// DELTA TIME
targetDelta = 1/120;
actualDelta = delta_time / 1000000;
global.deltaMultiplier = actualDelta/targetDelta;