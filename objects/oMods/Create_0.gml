// load all the mods data
modsName[0] = "Auto Play";
modsDesc[0] = "Plays the game for you.";
modsSelected[0] = false;
modsMultiplier[0] = 0;

modsName[1] = "Fast Notes";
modsDesc[1] = "Makes the notes go zoom.";
modsSelected[1] = false;
modsMultiplier[1] = 0.2;

modsName[2] = "Slow Notes";
modsDesc[2] = "Makes the notes go slowwwwwww.";
modsSelected[2] = false;
modsMultiplier[2] = -0.2;

modsName[3] = "Vanish";
modsDesc[3] = "The notes will become invisible before hitting them.";
modsSelected[3] = false;
modsMultiplier[3] = 0.3;

modsName[4] = "No Fail";
modsDesc[4] = "You cannot fail, i dare you to try.";
modsSelected[4] = false;
modsMultiplier[4] = -0.8;

modsName[5] = "Flashlight";
modsDesc[5] = "oooooh you cant seeeeeeeeeee";
modsSelected[5] = false;
modsMultiplier[5] = 0.3;

modsName[6] = "Fragile";
modsDesc[6] = "Miss once, and you are dead.";
modsSelected[6] = false;
modsMultiplier[6] = 0;

modsName[7] = "Flipped";
modsDesc[7] = "Left is right, up is down.";
modsSelected[7] = false;
modsMultiplier[7] = 0.1;

modsName[8] = "Accel Notes";
modsDesc[8] = "Notes gradually accelerate as time passes.";
modsSelected[8] = false;
modsMultiplier[8] = 0.3;

// make every mods scale equal 0.8
for (var i = 0; i < array_length(modsMultiplier); ++i) {
	modsScale[i] = 0.8;
}

totalMulti = 1; // total multiplier
hoveredMod = -1; // the mod that has been hovered over, used for tips