randomize();

curText = 0;
backgroundHidden = true;
whiteFlashOpacity = 0;
timerUntilNextRoom = -1;

mus = audio_play_sound(freakyMenu, 10, true);
var chosenJoke = irandom_range(0, 53);

image_speed = (100 / 60) / 2;

text[0] = "codist";
text[1] = "presents";
text[2] = "a recreation of";
text[3] = "a recreation of\nninjamuffin99, PhantomArcade,\nkawaisprite, and evilsk8ers\ngame";
text[4] = "";
text[5] = title_jokes(chosenJoke, true);
text[6] = title_jokes(chosenJoke, false);
text[7] = "friday";
text[8] = "friday\nnight";
text[9] = "friday\nnight\nfunkin";
text[10] = "friday\nnight\nfunkin\ngamemaker port";
text[11] = "";