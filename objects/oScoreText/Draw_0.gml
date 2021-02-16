draw_self();
draw_set_font(global.comboNumberFont);
var comboString = string_format(global.combo, 3, false);
comboString = string_replace_all(comboString, " ", "0");
if (global.combo >= 10) draw_text_transformed_color(x + comboOffset - 120, y + 55, comboString, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, image_alpha);
draw_set_font(fntDefault);