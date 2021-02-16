surface_set_target(global.hudSurface);

if !(global.dead) {

var hpWidth = (global.hp / hpMax) * healthXOff;
var boyHpLow = (global.hp <= 10);
var enemyHpLow = (global.hp >= 90);
draw_rectangle_color(x + outlineWidth, y - outlineWidth, x - healthXOff - outlineWidth, y + healthYOff + outlineWidth, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(x, y, x - healthXOff, y + healthYOff, c_red, c_red, c_red, c_red, false);
draw_rectangle_color(x, y, x - hpWidth, y + 10, c_lime, c_lime, c_lime, c_lime, false);

var enemyIcon = (global.enemy + 1) * 2;
draw_sprite_ext(sIcons,enemyIcon + enemyHpLow,x - hpWidth - 50, y, 1, 1, 0, c_white, 1); // enemy icon
draw_sprite_ext(sIcons,0 + boyHpLow,x - hpWidth + 50, y, -1, 1, 0, c_white, 1); // boy icon

// score
draw_set_font(global.comboNumberFont);
draw_set_halign(fa_right);
hiddenScore = lerp(hiddenScore, global.curScore, 0.2);
draw_text_transformed(1270, 5, round(hiddenScore), 0.3, 0.3, 0);
draw_set_halign(fa_left);
draw_set_font(fntDefault);
}

surface_reset_target();