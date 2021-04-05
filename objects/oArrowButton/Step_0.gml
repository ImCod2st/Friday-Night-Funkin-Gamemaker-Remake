if (global.dead) exit;

if !(afterCreate) {
	if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) spr = asset_get_index(sprite_get_name(spr) + "Pixel");
	sprHit = asset_get_index(sprite_get_name(spr) + "Hit");
	sprite_index = spr;
	afterCreate = true;	
}
var controllerKey;
if (key == vk_left)
	controllerKey = gp_padl;
if (key == vk_right)
	controllerKey = gp_padr;
if (key == vk_up)
	controllerKey = gp_padu;
if (key == vk_down)
	controllerKey = gp_padd;

if !(enemy) && !(global.auto) {
	if (keyboard_check_pressed(key))
	|| (gamepad_button_check_pressed(global.controller, controllerKey)) {
		image_speed = 1;
		image_index = 0;
		
		if !(global.kadeInput) oBoyfriend.missed = true;
		else oBoyfriend.missed = false;
		
		with (instance_place(x, y, oNote)) {
			
			if !(notRealNote) {	
				with (other) sprite_index = sprHit;
				if (sliderLength <= 0) instance_destroy();
				else {
					beingHeld = true;
					keyPressedWith = other.key;	
				}
				global.hp += 1;
				oBoyfriend.missed = false;
				global.playVoice = 1;
				
				// whitty input animations
				if (global.kadeInput) {
					with (oBoyfriend) {
						notePlaying = other.image_index;
						animCount = 45;
						singFrame = 0;	
					}
				}
				
				var distance = point_distance(x, y, other.x, other.y);
				var scor = 0;

				if (distance > 25) scor = 1;
				if (distance > 65) scor = 2;
				if (distance > 75) scor = 3;
				var scoreX = 1259
				var scoreY = 485;
				if (instance_exists(oGirlfriend)) {scoreX = oGirlfriend.x + 5; scoreY = oGirlfriend.y - 517};
				var o = instance_create_depth(scoreX, scoreY, 400 - instance_number(oScoreText), oScoreText);
				o.image_index = scor;
				
				var scoreAdd = 350;
				if (scor = 1) scoreAdd += 200;
				if (scor = 2) scoreAdd += 100;
				if (scor = 3) scoreAdd += 50;
				global.curScore += scoreAdd * global.currentMultiplier;
				
				global.combo++;
				oHUD.hitCount += 1;
			}
		}
		
		if (oBoyfriend.missed) {
			audio_play_sound(asset_get_index("missnote" + choose("1", "2", "3")), 10, false);
			global.hp -= 2;	
			global.playVoice = 0;
			global.curScore -= 10 * global.currentMultiplier;
			global.combo = 0;
			oHUD.missCount += 1;
			
			if (global.fragile) global.hp = 0;
		}
	}

	if (keyboard_check_released(key))
	|| (gamepad_button_check_released(global.controller, controllerKey)) {
		image_index = 1;
		sprite_index = spr;
	}

	if (keyboard_check(key))
	|| (gamepad_button_check(global.controller, controllerKey)) {
		if (image_index >= sprite_get_number(sprite_index) - 2) image_index = sprite_get_number(sprite_index) - 2;
	}
}