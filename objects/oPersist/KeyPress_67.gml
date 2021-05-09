/// @description 

if (room != Title) && (room != Debug) {
	if (room != CharacterSelect) {
		global.roomBefore = room;
		
		o = instance_create_depth(x, y, -10000, oFade);
		o.roomTo = CharacterSelect;
	} else {
		o = instance_create_depth(x, y, -10000, oFade);
		o.roomTo = global.roomBefore;
	}
}