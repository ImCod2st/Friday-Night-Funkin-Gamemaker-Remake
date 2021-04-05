image_speed = (global.bpm / 60) / 30 * global.deltaMultiplier;

// changeable 3 2 1
snd3 = intro3;
snd2 = intro2;
snd1 = intro1;
sndGo = introGo;
if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) {
	sprite_index = sReadySetGoPixel;
	snd3 = intro3Pixel;
	snd2 = intro2Pixel;
	snd1 = intro1Pixel;
	sndGo = introGoPixel;
}

// dialog
hasDialog = false;

var dialogueFile = global.songName + "\\dialogue.txt";
if (global.useProgramDir) dialogueFile = working_directory + "\\Songs\\" + dialogueFile;
if (file_exists(dialogueFile)) hasDialog = true;
if (global.freeplay) hasDialog = false;

audio_stop_all();
if !(hasDialog) audio_play_sound(snd3, 10, false);
else {
	instance_create_depth(x, y, -100000, oDialogBox);
	image_speed = 0;	
}

// death reset
if (global.dead = true) {
	var o = instance_create_depth(0, 0, depth - 100, oFade);
	with (o) {
		fadeY = -199;
		moved = true;
	}
	global.dead = false;
}
global.playVoice = 1;
global.turn = 1;

// start music
global.musicSync = audio_create_sync_group(false);
audio_play_in_sync_group(global.musicSync, global.song);
if (global.voices != "") audio_play_in_sync_group(global.musicSync, global.voices);

// reset bf and gf idle
oBoyfriend.image_index = 0;
oGirlfriend.image_index = 0;