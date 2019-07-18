var now=current_time/1000;
if(now>=max_time){
	instance_destroy();	
}else{
	if(now>=start_flick){
		image_speed+=flick_acceleration;
	}else{
		image_speed=0;	
	}
}