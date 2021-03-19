if !(surface_exists(global.hudSurface)) exit;
surface_set_target(global.hudSurface);

if !(global.dead) {

if !(global.flashlight) {
global.hp = clamp(global.hp, 0, 100)

var hpWidth = (global.hp / hpMax) * healthXOff;
draw_rectangle_color(x + outlineWidth, y - outlineWidth, x - healthXOff - outlineWidth, y + healthYOff + outlineWidth, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(x, y, x - healthXOff, y + healthYOff, c_red, c_red, c_red, c_red, false);
draw_rectangle_color(x, y, x - hpWidth, y + 10, c_lime, c_lime, c_lime, c_lime, false);

var boyHpLow = (global.hp <= 10) or (global.fragile);
var enemyHpLow = (global.hp >= 90);

enem = global.enemy;
bf = 0;
iconSpr = sIcons;

special_icons(global.enemy);

var enemyIcon = (enem + 1) * 2;
var bfIcon = bf * 2;

draw_sprite_ext(iconSpr,enemyIcon + enemyHpLow, x - hpWidth - 55, y, 1, 1, 0, c_white, 1); // enemy icon
draw_sprite_ext(iconSpr,bfIcon + boyHpLow,x - hpWidth + 55, y, -1, 1, 0, c_white, 1); // boy icon
}

// score
draw_set_font(global.comboNumberFont);
draw_set_halign(fa_right);
hiddenScore = lerp(hiddenScore, global.curScore, 0.2);
draw_text_transformed(1270, 5, round(hiddenScore), 0.3, 0.3, 0);
draw_text_transformed(1270, 35, "x" + string(global.combo), 0.3, 0.3, 0);
draw_set_halign(fa_left);
draw_set_font(fntDefault);

// timer
var curTime = audio_sync_group_get_track_pos(global.musicSync);
var leng = audio_sound_length(global.song) - 0.1;

draw_pie(1242, 675, curTime, leng, c_white, 30, 0.8);

if (global.advancedHud) or (global.auto) {
	draw_set_halign(fa_center);
	
	var str = "HP: " + string(round(global.hp)) + "%" + "          " + "MISSES: " + string(missCount) + "          " + "ACCURACY: " + string(100 - ((missCount / (hitCount + missCount)) * 100)) + "%";
	if (global.auto) str = "! AUTO MODE !";
	draw_text_transformed(640, 680, str, 1, 1, 0);	
	
	draw_set_halign(fa_left);
}

}

surface_reset_target();