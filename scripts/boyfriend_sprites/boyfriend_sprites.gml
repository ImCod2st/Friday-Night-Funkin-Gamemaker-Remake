
function boyfriend_sprites() {
	var add = "";
	
	switch (global.boyfriend) {
		case("og"):
			flipped = false;
			char = "sBoyfriend";
		break;
		
		case("codist"):
			flipped = false;
			char = "sBoyfriendCod";
		break;
		
		case("christmas"):
			flipped = false;
			char = "sBoyfriendChrist";
		break;
		
		case("car"):
			flipped = false;
			char = "sBoyfriendCar";
		break;
		
		case ("dad"):
			flipped = true;
			char = "sDad";
		break;
		
		case("mom"):
			flipped = true;
			char = "sMom";
		break;
		
		case("spooky twins"):
			flipped = true;
			char = "sSpooky";
		break;
		
		case("whitty2"):
			flipped = true;
			char = "sWhittyC";
		break;

		default:
			flipped = false;
			char = "sBoyfriend";
		break;
	}
	
	// if it is the default boyfriend sprite
	if (char == "sBoyfriend")
	&& (room != CharacterSelect) { // then just add an addon
		if (global.enemy = 5) add = "Car";
		if (global.enemy = 6) or (global.enemy = 7) add = "Christ";
	}

	sprIdle = asset_get_index(char + add + "Idle");
	sprLeft = asset_get_index(char + add + "Left");
	sprDown = asset_get_index(char + add + "Down");
	sprUp = asset_get_index(char + add + "Up");
	sprRight = asset_get_index(char + add + "Right");
}