var trackPosToDisplay = audio_sound_get_track_position(global.music);
draw_text(1003, 55, string(trackPosToDisplay) + " / " + string(audio_sound_length(global.music)));
draw_text(1003, 75, "Gridheight: " + string(ds_grid_height(global.chart)));