if (fadeY > -200) && !(moved) {
	if (room = roomTo) room_restart();
	if (room != roomTo){  
		load_assets() 
	}
	moved = true;
	instance_activate_all();
}
if (fadeY > 1100) instance_destroy();

fadeY += 20;