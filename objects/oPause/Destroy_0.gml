// when this object is destroyed, resume the song and reactivate all objects
audio_resume_sync_group(global.musicSync);
instance_activate_all();