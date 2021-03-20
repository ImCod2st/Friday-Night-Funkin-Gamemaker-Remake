function special_icons(enemy){
	if (enemy = 8) or (enemy = 9) {enem = 8; bf = 0; enemyIconSpr = sIcons; bfIconSpr = sIconsSpecial} // senpai
	if (enemy = 10) {enem = 10; bf = 0; enemyIconSpr = sIcons; bfIconSpr = sIconsSpecial} // senpai
	
	if (enemy = 101) {enem = 1; bf = 0; enemyIconSpr = sIconsSpecial; bfIconSpr = sIcons} // whitty
	if (enemy = 102) {enem = 3; bf = 3; enemyIconSpr = sIconsSpecial; bfIconSpr = sIconsSpecial;} // codist and oxi
}

function special_backgrounds(enemy){
	var ind = 0;
	if (enemy = 101) {ind = 1;} // whitty
	if (enemy = 102) {ind = 0;} // codist and oxi
	
	if (global.specialSongs) draw_sprite(sBackgroundFunkOther, ind, 0, 0);	
}