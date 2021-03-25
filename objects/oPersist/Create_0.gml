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
global.enemy = 0; // 0 - gf, 1 - dad, 2 - spooky, 3 - monster, 4 - pico, 5 - mom, 6/7 - parents & monster, 8/9/10 - senpai
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
global.volume = 1;
global.controller = -1;

// week variables
global.freeplay = false;
global.weeks = 6;
for (var i = 0; i < global.weeks + 1; ++i) {
	global.weekScoreEasy[i] = 0;
	global.weekScoreNormal[i] = 0;
	global.weekScoreHard[i] = 0;
}
global.currentDif = 1;

// fonts
draw_set_font(fntDefault);
global.font = font_add_sprite_ext(sMessageFont, "abcdefghijklmnopqrstuvwxyz,_0123456789-.:", true, -2);
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
global.useProgramDir = true;
if (program_directory = "X:\\windows\\") global.useProgramDir = false;
load_data();

// keyboard maps
global.kadeInput = false;
keyboard_set_map(ord("A"), vk_left);
keyboard_set_map(ord("S"), vk_down);
keyboard_set_map(ord("W"), vk_up);
keyboard_set_map(ord("D"), vk_right);

keyboard_set_map(vk_escape, vk_backspace);
keyboard_set_map(ord("Z"), vk_space);

// basic controller support because I don't think I have the patience to go through the whole project and rewrite it
// i dont blame you - codist

// delta time
targetDelta = 1/120;
actualDelta = delta_time / 1000000;
global.deltaMultiplier = actualDelta/targetDelta;

