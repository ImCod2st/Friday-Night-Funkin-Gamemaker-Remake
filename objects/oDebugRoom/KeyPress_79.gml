/// @description Backing song
var songString = get_string("Song Asset:", "");

var songAsset = asset_get_index(songString);
if (songString != "") && (audio_exists(songAsset)) global.song = songAsset;

room_restart();