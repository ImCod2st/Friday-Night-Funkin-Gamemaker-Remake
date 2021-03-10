//hudBopVsp -= 0.001;

//hudBopScale += hudBopVsp;
//if (hudBopScale < 1) hudBopScale = 1;

//hudBopTimer += 0.1;
//if (hudBopTimer >= (global.bpm / 60) * 16) {
//	hudBopVsp = 0.01;
//	hudBopTimer = 0;
//}

actualDelta = delta_time / 1000000;
global.deltaMultiplier = actualDelta/targetDelta;

// check if song ended
if (variable_global_exists("musicSync")) {
	var curTime = audio_sync_group_get_track_pos(global.musicSync);
	var finalTime = audio_sound_length(global.song);
	if (curTime >= finalTime - 0.1) && (room = MainGame) {
		timeUntilMoveOn++;
		audio_pause_sync_group(global.musicSync);	
	}
}

if (timeUntilMoveOn >= 420) {
	var roomTo = MainGame;
	load_chart(global.nextSong[global.songOn], global.currentDif);
	global.songScore[global.songOn] = global.curScore;
	if (global.nextSong[global.songOn] = "n") {
		roomTo = StoryMenu;
		audio_play_sound(freakyMenu, 10, true);
		var totalScore = 0;
		for (var i = 0; i <= global.songOn; ++i) {
		    totalScore += global.songScore[i];
		}
		
		if !(global.freeplay) {
			if (global.currentDif = 0) global.weekScoreEasy[global.weekPlaying] = totalScore;
			if (global.currentDif =1) global.weekScoreNormal[global.weekPlaying] = totalScore;
			if (global.currentDif = 2) global.weekScoreHard[global.weekPlaying] = totalScore;
			save_weekscore(global.weekPlaying);
		} else {
			save_songscore(global.songName, global.currentDif, global.curScore);
		}
	}
	global.songOn++;
	
	var o = instance_create_depth(0, 0, -10000, oFade);
	if (global.freeplay) roomTo = FreePlay;
	o.roomTo = roomTo;
	audio_destroy_sync_group(global.musicSync);
	timeUntilMoveOn = 0;
}

global.volume = clamp(global.volume, 0, 1);
audio_master_gain(global.volume);