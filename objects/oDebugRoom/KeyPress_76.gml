/// @description Load song
var songName = get_string("(Loading) Song Name:", global.songName);
dif = get_integer("Difficulty (0 - Easy, 1 - Normal, 2 - Hard):", dif);

if (songName != "") global.songName = songName;
else exit;

load_chart(global.songName, dif, true);