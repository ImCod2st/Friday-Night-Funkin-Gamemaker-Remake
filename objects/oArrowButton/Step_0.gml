if (global.dead) exit;

if !(afterCreate) {
	sprite_index = spr;
	afterCreate = true;	
}

if !(enemy) {
	if (keyboard_check_pressed(key)) {
		image_speed = 1;
		image_index = 0;
		
		oBoyfriend.missed = true;
		with (instance_place(x, y, oNote)) {
			if !(switchTurn) {	
				with (other) sprite_index = asset_get_index(sprite_get_name(spr) + "Hit");
				if (sliderLength <= 0) instance_destroy();
				else {
					beingHeld = true;
					keyPressedWith = other.key;	
				}
				global.hp += 1;
				oBoyfriend.missed = false;
				
				var distance = point_distance(x, y, other.x, other.y);
				var scor = 0;

				if (distance > 20) scor = 1;
				if (distance > 50) scor = 2;
				if (distance > 60) scor = 3;
				var o = instance_create_depth(1254, 485, 400 - instance_number(oScoreText), oScoreText);
				o.image_index = scor;
				if (scor = 0) global.curScore += 350;
				if (scor = 1) global.curScore += 200;
				if (scor = 2) global.curScore += 100;
				if (scor = 3) global.curScore += 50;
				global.combo++;
				exit;
			}
		}
		
		if (oBoyfriend.missed) {
			audio_play_sound(asset_get_index("missnote" + choose("1", "2", "3")), 10, false);
			global.hp -= 1;	
			global.curScore -= 10;
			global.combo = 0;
		}
	}

	if (keyboard_check_released(key)) {
		image_index = 1;
		sprite_index = spr;
	}

	if (keyboard_check(key)) && (image_index >= sprite_get_number(sprite_index) - 2) {
		image_index = sprite_get_number(sprite_index) - 2;
	}
}