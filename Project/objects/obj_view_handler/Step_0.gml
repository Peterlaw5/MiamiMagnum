if(n_spawn==0){
	//camera_set_view_speed(view_camera[0],camera_hsp,0);	
	obj_camera_handler.stop=false;
	obj_camera_handler.reach=true;
	instance_destroy();
}