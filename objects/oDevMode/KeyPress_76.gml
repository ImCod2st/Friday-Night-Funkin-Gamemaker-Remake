if (room != Title) {
	if (room != SongImport) {
		global.roomBefore = room;
		
		o = instance_create_depth(x, y, -10000, oFade);
		o.roomTo = SongImport;
	} else {
		o = instance_create_depth(x, y, -10000, oFade);
		o.roomTo = MainMenu;
	}
}