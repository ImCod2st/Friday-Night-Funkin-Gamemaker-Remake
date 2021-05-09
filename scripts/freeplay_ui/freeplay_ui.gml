// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function freeplay_ui(){
	if !(global.customFreeplay) {
		// score
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(930, 0, 1280, 150, false);
		draw_set_alpha(1);
		draw_set_color(c_white);

		draw_set_font(global.comboNumberFont);
		draw_set_halign(fa_center);

		scorDisplay = lerp(scorDisplay, visibleScore, 0.2);
		draw_text_transformed(1110, 90, round(scorDisplay), 0.3, 0.3, 0);

		// dif
		draw_sprite(sDifs, difSelected, 1110, 46);
		if (difSelected != 2) draw_sprite(sDifsLock, 0, 1110, 46);  // TEMP BECAUSE I HAVE YET TO FINISH THE OTHER DIFS

		draw_set_halign(fa_left);
		
		// enemy icons
		enem = curEnemy;
		bf = 0;
		enemyIconSpr = sIcons;
		bfIconSpr = sIcons;

		special_icons(curEnemy);
		
		var enemyIcon = (enem + 1) * 2;
		var bfIcon = bf * 2;
		
		draw_sprite(enemyIconSpr, enemyIcon, 1070, 220 + iconYOffset);
		draw_sprite_ext(bfIconSpr, bfIcon, 1130, 220 + iconYOffset, -1, 1, 0, c_white, 1);
	} else {
		draw_set_font(global.comboNumberFont);
		draw_set_halign(fa_right);
		
		// score
		scorDisplay = lerp(scorDisplay, visibleScore, 0.2);
		draw_text_transformed(1150, 120, round(scorDisplay), 0.3, 0.3, 0);
		
		draw_set_halign(fa_left);

		// dif
		draw_sprite(sDifsAlt, difSelected, 1074, 50);
		if (difSelected != 2) draw_sprite(sDifsLock, 0, 1074, 50);  // TEMP BECAUSE I HAVE YET TO FINISH THE OTHER DIFS
	}
}