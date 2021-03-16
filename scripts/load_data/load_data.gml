// load the users scores / options
// usually run at the beginning of the game
function load_data(){
	ini_open("playerdata.save");
	// loop through each week and load all the weeks scores
	for (var i = 0; i <= global.weeks; ++i) {
		global.weekScoreEasy[i] = ini_read_real("Week" + string(i) + "Score", "Easy", 0);
		global.weekScoreNormal[i] = ini_read_real("Week" + string(i) + "Score", "Normal", 0);
		global.weekScoreHard[i] = ini_read_real("Week" + string(i) + "Score", "Hard", 0);
	}
	ini_close();
}