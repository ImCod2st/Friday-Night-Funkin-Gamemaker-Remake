draw_self();
draw_set_font(comboFont);
draw_set_alpha(image_alpha);
if (global.combo >= 10) draw_text_transformed(x + comboOffset - 120, y + 55, comboString, 0.5, 0.5, 0);
draw_set_alpha(1);
draw_set_font(fntDefault);