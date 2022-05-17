image_speed = 0;
noteY = 0;
image_xscale = 0.7;
image_yscale = 0.7;

curNoteSpeed = 0;
noteSpeedAdd = 0;
noteRangeDetermine = 0; // the range of the note from the top of the screen

notetypes = ["normal", "cam", "death", "animation", "gml"]; 
notRealNote = false;
switchTurn = false;
bfHey = false;
useAlt = false;
enemyHeld = false;

yOff = 0;
sliderLength = 0;
keyPressedWith = undefined;
altkeyPressedWith = undefined;
heldAlready = false;
beingHeld = false;

midNote = sNotesMid;
lowNote = sNotesLow;
if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) {
	sprite_index = sNotesPixel;
	
	midNote = sNotesMidPixel;
	lowNote = sNotesLowPixel;
}

if (global.flashlight) image_alpha = 0;

if (x = 216) or (x = 856) image_index = 1;
if (x = 330) or (x = 968) image_index = 2;
if (x = 438) or (x = 1081) image_index = 3;

if (global.downScroll) image_yscale = -image_yscale;

event_inherited();