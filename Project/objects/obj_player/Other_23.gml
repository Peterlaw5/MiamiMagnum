/// @description SET FLICKERING
event_inherited();
var counter=flick_counter++;
if(hurt)counter+=long_flick_frames-hit_flick_frames;
if(invincibility){
	if(invincibility_sec*30<=counter){
		flick_counter=0;
		flicker_cd=0;
		image_alpha=1;
		invincibility=false;
		hurt=false;
	}
}else if(long_flick_frames <= counter){
	flick_counter=0;
	flicker_cd=0;
	image_alpha=1;
	invulnerable=false;
	hurt=false;
}


