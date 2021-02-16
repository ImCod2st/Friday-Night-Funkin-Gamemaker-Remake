/// @description Save song
var songName = get_string("(Saving) Song Name:", global.songName);
if (songName != "") global.songName = songName;
else exit;

save_chart(dif);