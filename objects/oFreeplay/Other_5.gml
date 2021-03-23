if (global.specialSongs) {
	for (var i = 0; i < songsFileInst; ++i) {
		if (i != curSelected) audio_destroy_stream(songsFileInst[i]);
	}
}