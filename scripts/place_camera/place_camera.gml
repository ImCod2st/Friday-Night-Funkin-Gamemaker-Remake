// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function place_camera(notes_output, noteType, noteY){
	camOff = 0;
	while (ds_grid_get(notes_output, noteType, noteY - camOff) = 0) camOff++;
	
	if (noteY = 0) ds_grid_set(notes_output,4,0,-1);
	else ds_grid_set(notes_output,noteType,noteY - 1,-1);
}