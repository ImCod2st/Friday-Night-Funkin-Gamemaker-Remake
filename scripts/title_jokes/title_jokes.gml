// every title joke that appears at the start of the game
// including some of my own bad ones
function title_jokes(jokeNum, leftSideOnly){
	joke[0] = "shoutouts to tom fulp\nlmao";
	joke[1] = "ludum dare\nextraordinaire";
	joke[2] = "cyberzone\ncoming soon";
	joke[3] = "love to thriftman\nswag";
	joke[4] = "ultimate rhythm gaming\nprobably";
	joke[5] = "dope ass game\nplaystation magazine";
	joke[6] = "in loving memory of\nhenryeyes";
	joke[7] = "dancin\nforever";
	joke[8] = "funkin\nforever";
	joke[9] = "ritz dx\nrest in peace lol";
	joke[10] = "rate five\npls no blam";
	joke[11] = "rhythm gaming\nultimate";
	joke[12] = "game of the year\nforever";
	joke[13] = "you already know\nwe really out here";
	joke[14] = "rise and grind\nlove to luis";
	joke[15] = "like parappa\nbut cooler";
	joke[16] = "album of the year\nchuckie finster";
	joke[17] = "free gitaroo man\nwith love to wandaboy";
	joke[18] = "better than geometry dash\nfight me robtop";
	joke[19] = "kiddbrute for president\nvote now";
	joke[20] = "play dead estate\non newgrounds";
	joke[21] = "this is a god damn prototype\nwe workin on it okay";
	joke[22] = "women are real\nthis is official";
	joke[23] = "too over exposed\nnewgrounds cant handle us";
	joke[24] = "hatsune miku\nbiggest inspiration";
	joke[25] = "too many people\nmy head hurts";
	joke[26] = "newgrounds\nforever";
	joke[27] = "refined taste in music\nif i say so myself";
	joke[28] = "his name isnt keith\ndumb eggy lol";
	joke[29] = "his name isnt evan\nsilly tiktok";
	joke[30] = "stream chuckie finster\non spotify";
	joke[31] = "never forget to\npray to god";
	joke[32] = "dont play rust\nwe only funkin";
	joke[33] = "good bye\nmy penis";
	joke[34] = "dababy\nbiggest inspiration";
	joke[35] = "fashionably late\nbut here it is";
	joke[36] = "yooooooooooo\nyooooooooo";
	joke[37] = "pico funny\npico funny";
	joke[38] = "updates each friday\non time every time";
	
	// custom fuckery
	joke[39] = "nictube on\nthe trampbopoleen";
	joke[40] = "gamemaker\nsucks dick";
	joke[41] = "boyfriend do be\ndripping";
	joke[42] = "where\nwhat";
	joke[43] = "over extended mouths\nhow does it work";
	joke[44] = "im four jokes in\nand im out of ideas";
	joke[45] = "troll face\ntroll face";
	joke[46] = "funk\nall afternoon";
	joke[47] = "go pico\nyeah yeah go pico";
	joke[48] = "these jokes are not real\noh well";
	joke[49] = "master of\nspaghetti code";
	joke[50] = "why cant we all\njust funk together";
	joke[51] = "not funny\n ";
	joke[52] = "/n\n damn it wrong way round";
	joke[53] = "ninjamuffin\nplease dont stab me";
	joke[54] = "im inside your\nhouse";
	joke[55] = "there is no joke\ntake of your clothe";
	joke[56] = "man\n";
	
	// get the selected joke and return the left side, or the entire thing
	var chosen = joke[jokeNum];
	if (leftSideOnly) chosen = string_delete(chosen, string_pos("\n", chosen), string_length(chosen));
	return chosen;
}