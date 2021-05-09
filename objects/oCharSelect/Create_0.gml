
characters[0] = "og"; 
characters[1] = "codist";
characters[2] = "christmas";
characters[3] = "car";
characters[4] = "dad";
characters[5] = "mom";
characters[6] = "spooky twins";
characters[7] = "whitty2";
characters[8] = "pixel";
characters[9] = "tankman";
characters[10] = "pico";

curEnemy = 0;

flipped = false;

difSelected = 1;
curSelected = array_length(characters) - 1;
lastSelected = -1;
timer = 20;

scorDisplay = 0;
visibleScore = 0;

yOffset = array_create(array_length(characters))
xOffset = array_create(array_length(characters))