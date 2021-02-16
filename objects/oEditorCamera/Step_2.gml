x = clamp(x, viewWHalf, room_width - viewWHalf);
y = clamp(y, oDebugNoteEditor.y, room_height);
camera_set_view_pos(cam, x - viewWHalf, y - viewHHalf);