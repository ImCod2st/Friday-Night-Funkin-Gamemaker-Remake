if (global.dead) exit;

if !(afterCreate) {
	if (global.enemy = 8) or (global.enemy = 9) or (global.enemy = 10) spr = asset_get_index(sprite_get_name(spr) + "Pixel");
	sprHit = asset_get_index(sprite_get_name(spr) + "Hit");
	sprite_index = spr;
	afterCreate = true;	
}
var controllerKey;
var altKey;
switch (key) {
	case vk_left: controllerKey = gp_padl; altKey = global.leftKeybind; break;
	case vk_right: controllerKey = gp_padr; altKey = global.rightKeybind; break;
	case vk_up: controllerKey = gp_padu; altKey = global.upKeybind; break;
	case vk_down: controllerKey = gp_padd; altKey = global.downKeybind; break;
}

if !(enemy) && !(global.auto) {
	if (keyboard_check_pressed(key)) || (keyboard_check_pressed(altKey))
	|| (gamepad_button_check_pressed(global.controller, controllerKey)) {
		image_speed = 1;
		image_index = 0;
		
		oBoyfriend.missed = true;
		
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
				
				if (global.particles) && (scor = 0) {
					var o = instance_create_depth(x, y, depth - 100, oSickParticle);
					o.sprite_index = choose(sParticleLeft1,  sParticleLeft2);
					if (image_index = 1) o.sprite_index = choose(sParticleDown1,  sParticleDown2);
					if (image_index = 2) o.sprite_index = choose(sParticleUp1,  sParticleUp2);
					if (image_index = 3) o.sprite_index = choose(sParticleRight1,  sParticleRight2);
					
					o.x = other.x;
					o.y = other.y;
				}
				
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

	if (keyboard_check_released(key)) || (keyboard_check_released(altKey))
	|| (gamepad_button_check_released(global.controller, controllerKey)) {
		image_index = 1;
		sprite_index = spr;
	}

	if (keyboard_check(key)) || (keyboard_check(altKey))
	|| (gamepad_button_check(global.controller, controllerKey)) {
		if (image_index >= sprite_get_number(sprite_index) - 2) image_index = sprite_get_number(sprite_index) - 2;
	}
}