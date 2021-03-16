// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function special_icons(enemy){
	if (enemy = 101) {enem = 1; bf = 0; iconSpr = sIconsSpecial;} // whitty
	if (enemy = 102) {enem = 3; bf = 3; iconSpr = sIconsSpecial;} // codist and oxi
}

function special_backgrounds(enemy){
	var ind = 0;
	if (enemy = 101) {ind = 1;} // whitty
	if (enemy = 102) {ind = 0;} // codist and oxi
	
	if (global.specialSongs) draw_sprite(sBackgroundFunkOther, ind, 0, 0);	
}