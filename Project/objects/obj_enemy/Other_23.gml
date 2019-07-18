/// @description SET FLICKERING
event_inherited();
var counter=flick_counter++;
if(hurt)counter+=long_flick_frames-hit_flick_frames;
if(long_flick_frames <= counter){
	flick_counter=0;
	flicker_cd=0;
	image_alpha=1;
	hurt=false;
}



