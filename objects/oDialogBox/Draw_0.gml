if (instance_exists(oCutscene)) exit;
if (instance_exists(oFade)) exit;
if (finished) exit;

if !(surface_exists(global.hudSurface)) exit;
surface_set_target(global.hudSurface);

// bg
draw_set_color(c_white);
draw_set_alpha(0.6);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

var selDialog = dialog[curDialog];
var selCharacter = dialogChar[curDialog];

// portrait
var charIndex = get_portraits(selCharacter);
var portraitX = -310;
if (charIndex = 0) portraitX = 310;
draw_sprite(sDialogPortrait, charIndex, x + portraitX + charSpriteOffset, y - 110)

// box
draw_sprite(spr, index, x, y);

// text
draw_set_font(font);
draw_set_color(color1);

curLetter += 0.2;
if (curLetter < string_length(selDialog)) && !(audio_is_playing(pixelText)) audio_play_sound(pixelText, 10, false);

var fullText = string_copy(selDialog, 0, round(curLetter));
if (shadow) draw_text_ext_color(x - 356, y - 66, fullText, 40, 760, color2, color2, color2, color2, 1);
draw_text_ext(x - 360, y - 70, fullText, 40, 760);

draw_set_color(c_white);
draw_set_font(fntDefault);

surface_reset_target();