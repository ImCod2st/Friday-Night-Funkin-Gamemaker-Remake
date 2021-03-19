// add to the multiplier depending on all the selected mods
// as of now multipliers dont work to give myself time to balance them
totalMulti = 1;
for (var i = 0; i < array_length(modsMultiplier); ++i) {
	if (modsSelected[i]) totalMulti += modsMultiplier[i];
}
if (modsSelected[0] = 1) totalMulti = 0;

if (totalMulti < 0) totalMulti = 0;