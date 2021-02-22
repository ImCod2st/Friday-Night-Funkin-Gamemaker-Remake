if (fadeY < -200) && !(moved) {
	if (room = roomTo) room_restart();
	if (room != roomTo) room_goto(roomTo);
	moved = true;
	instance_activate_all();
}
if (fadeY < -1100) instance_destroy();

fadeY -= 15;