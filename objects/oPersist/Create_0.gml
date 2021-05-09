// chart info
global.chart = ds_grid_create(8, 16);
global.song = Tutorial_Inst;
global.voices = "";
global.bpm = 100;
global.noteSpeed = 5;
global.camSpeed = 360; // BPM * 2.85256410256
global.songName = "Tutorial";

global.boyfriend = "og";
global.roomBefore = room;

// voice muting
global.playVoice = 1;

// story mode variables
global.weekPlaying = 0;
global.songOn = 0;
global.songScore[0] = 0;
global.nextSong[0] = "n";

// enemy variables
global.enemy = 0; // 0 - gf, 1 - dad, 2 - spooky, 3 - monster, 4 - pico, 5 - mom, 6/7 - parents & monster, 8/9/10 - senpai, 11 - tankman
// special enemys 100/101 - whitty, 102 - oxi
global.turn = true;

global.dead = false; // is the player dead

// camera variables
global.camWidth = 1280;
global.camHeight = 720;
global.hudSurface = surface_create(1280, 720)
hudBopVsp = 0;
hudBopScale = 0;
hudBopTimer = 0;

oldCamX = 1164;
oldCamY = 692;

// mods
global.auto = false;
global.fastnotes = false;
global.slownotes = false;
global.vanish = false;
global.nofail = false;
global.flashlight = false;
global.fragile = false;
global.flipped = false;
global.accelnotes = false;

global.currentMultiplier = 1;

// freeplay variables
global.specialSongs = false;
global.bSides = false;

// settings
global.offset = 0;
global.advancedHud = false;
global.downScroll = false;

global.volume = 1;
global.controller = 1;

global.particles = true;
global.customFreeplay = true;

// controls
global.leftKeybind = 65;
global.downKeybind = 83;
global.upKeybind = 87;
global.rightKeybind = 68;
global.acceptKeybind = 90;
global.backKeybind = 88;

// week variables
global.freeplay = false;
global.weeks = 7;
for (var i = 0; i < global.weeks + 1; ++i) {
	global.weekScoreEasy[i] = 0;
	global.weekScoreNormal[i] = 0;
	global.weekScoreHard[i] = 0;
}
global.currentDif = 1;

// fonts
draw_set_font(fntDefault);
global.font = font_add_sprite_ext(sMessageFont, "abcdefghijklmnopqrstuvwxyz,_0123456789-.:@~", true, -2);
var comboNumStr = "0123456789-x";
global.comboNumberFont = font_add_sprite_ext(sComboNumber, comboNumStr, true, -20);
global.comboNumberFontPixel = font_add_sprite_ext(sComboNumberPixel, comboNumStr, true, -20);

// list of notes
enum notes {
	left,
	down,
	up,
	right
}

// gui
volumeDisplay = 0;
timeUntilMoveOn = 0;

// check where data should be saved / loaded
// if useprogramdir is on, it will check in where the program is stored
// codist only changes this because his computer is stupid
global.useProgramDir = true;
load_data();

// basic controller support because I don't think I have the patience to go through the whole project and rewrite it
// i dont blame you - codist
//i did it dw - codist 2021-05-08

// delta time
targetDelta = 1/120;
actualDelta = delta_time / 1000000;
global.deltaMultiplier = actualDelta/targetDelta;