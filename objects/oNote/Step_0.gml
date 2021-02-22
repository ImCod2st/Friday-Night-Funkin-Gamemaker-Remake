actualDelta = delta_time / 1000000;
deltaMultiplier = actualDelta/targetDelta;
trueNoteSpeed = curNoteSpeed * deltaMultiplier;

y -= trueNoteSpeed;
if (yOff != 0) {y -= yOff; yOff = 0;}
if (switchTurn) sprite_index = sDebugNotes;

with (instance_place(x, y + 90, oArrowButton)) {
	if (enemy) {
		if (other.switchTurn) exit;
		
		var obj = oEnemy;
		if (global.enemy = 0) obj = oGirlfriend;
		obj.dir = other.image_index;
		obj.animationTimer = 70 + other.sliderLength / 8;
		
		if (other.sliderLength <= 0) {
			instance_destroy(other);
			obj.holdAnimation = false;
			obj.animationIndex = 0;
		} else {
			other.heldAlready = true;
			other.sliderLength -= global.noteSpeed * other.deltaMultiplier;
			other.curNoteSpeed = 0;
			obj.holdAnimation = true;
		}
	}
}

if (beingHeld) {
	heldAlready = true;
	curNoteSpeed = 0;
	sliderLength -= global.noteSpeed * deltaMultiplier;
	global.hp += 0.025;
	with (oArrowButton) if (dir = other.image_index) image_index = 0;
	oBoyfriend.holdAnimation = true;
	
	if (keyboard_check_released(keyPressedWith)) {
		beingHeld = false;
		curNoteSpeed = global.noteSpeed;
		oBoyfriend.holdAnimation = false;
	}
	
	if (sliderLength <= 0) {
		instance_destroy();	
		oBoyfriend.holdAnimation = false;
	}
}

if (y < 0 - sliderLength - 10) {
	instance_destroy();
	
	if (switchTurn) exit; 
	if (x < 600) exit;
	global.hp -= 2 + sliderLength / 80;
}

//if (fadeIn) && (image_alpha < 1) image_alpha += 0.1;