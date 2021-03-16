// saves the score the player gets on a week in story mode
function save_weekscore(week, dif){
	// get all the variables ready for saving
	var difName = "Easy";
	var difVar = global.weekScoreEasy[week];
	switch (dif) {
		case 1:
			difName = "Normal";
			difVar = global.weekScoreNormal[week];
			break;
		case 2:
			difName = "Hard";
			difVar = global.weekScoreHard[week];
			break;
	}
	
	ini_open("playerdata.save");
	
	// load the previous score to check if it is lower then the new one
	var beforeScore = ini_read_real("Week" + string(week) + "Score", difName, 0);
	// save the week score for every difficulty
	// !!! may need to be changed in the future
	if (difVar > beforeScore) ini_write_real("Week" + string(week) + "Score", difName, difVar);
	
	load_data();
	
	ini_close();
}