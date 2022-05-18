var video = video_draw() 
if (video[0] == 0) draw_surface_stretched(video[1], view_xport[0], view_yport[0], view_wport[0], view_hport[0]) else { 
	view_visible[0] = true;
	view_visible[1] = false;
	oReady.vidone = true;
	instance_destroy(); 
}
