if !(global.customFreeplay) special_backgrounds(curEnemy);
else {
	var songFrame;
	switch songs[curSelected] {
		default: songFrame = 0; break;
		case "stress": songFrame = 1; break;
	}
	draw_sprite(sBackgroundCustom, songFrame, 0, 0);
		
}