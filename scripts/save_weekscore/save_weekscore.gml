// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_weekscore(week){
	ini_open("playerdata.save");
	ini_write_real("Week" + string(week) + "Score", "Easy", global.weekScoreEasy[week]);
	ini_write_real("Week" + string(week) + "Score", "Normal", global.weekScoreNormal[week]);
	ini_write_real("Week" + string(week) + "Score", "Hard", global.weekScoreHard[week]);
	ini_close();
}