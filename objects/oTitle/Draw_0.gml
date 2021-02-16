draw_self();

draw_set_color(c_black);

if (backgroundHidden) draw_rectangle(0, 0, 1280, 720, false);

draw_set_color(c_white);

draw_set_alpha(whiteFlashOpacity);
draw_rectangle(0, 0, 1280, 720, false);
draw_set_alpha(1);

draw_set_font(global.font);
draw_set_halign(fa_center);

draw_text_ext(640, 220, text[curText], 65, 10000);

draw_set_halign(fa_left);
draw_set_font(fntDefault);