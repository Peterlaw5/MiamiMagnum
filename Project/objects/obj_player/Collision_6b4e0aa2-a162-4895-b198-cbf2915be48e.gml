cocaine+=other.cocaine_percentage;
if(cocaine>max_cocaine)cocaine=max_cocaine;
instance_destroy(other);
audio_play_sound(snd_cocaine,1,0);