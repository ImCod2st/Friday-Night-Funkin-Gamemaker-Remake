draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(global.font);

// draw the awaiting input text
draw_text(640, 360, keyString  + "\nawaiting input...");

draw_set_font(fntDefault);
draw_set_valign(fa_top);
draw_set_halign(fa_left);