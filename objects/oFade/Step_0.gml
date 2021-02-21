if (yDif < -200) && !(moved) {
	if (room = roomTo) room_restart();
	if (room != roomTo) room_goto(roomTo);
	moved = true;
	instance_activate_all();
}
if (yDif < -1100) instance_destroy();

yDif -= 15;