y -= curNoteSpeed;
if (switchTurn) sprite_index = sDebugNotes;

with (instance_place(x, y + 68, oArrowButton)) {
	if (enemy) {
		instance_destroy(other);
		
		if (other.switchTurn) exit;
		var obj = oEnemy;
		if (global.enemy = 0) obj = oGirlfriend;
		obj.dir = other.image_index;
		obj.animationTimer = 60;
		obj.animationIndex = 0;
	}
}

if (beingHeld) {
	heldAlready = true;
	curNoteSpeed = 0;
	sliderLength -= global.noteSpeed;
	global.hp += 0.05;
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
	global.hp -= 2 + sliderLength / 80;
	global.curScore -= 20;
}