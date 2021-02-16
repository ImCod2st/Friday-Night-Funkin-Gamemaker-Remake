/// @description Vocal song
var songString = get_string("Vocal Asset:", "");

var songAsset = asset_get_index(songString);
if (songString = "N/A") {global.voices = ""; exit;}
if (songString != "") && (audio_exists(songAsset)) global.voices = songAsset;

room_restart();