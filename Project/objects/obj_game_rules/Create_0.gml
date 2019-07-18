//Audio set true by default
audio = true;
destroy_score=0;
time_start=current_time;
hit_malus=0;
time_stop=0;
if (room != rm_start_screen)
{
	if (!instance_exists(obj_controller))
	{
		instance_create_layer(x,y,layer,obj_controller);
	}
	if (!instance_exists(obj_hud))
	{
		instance_create_layer(30,3300,layer,obj_hud);
	}
	if(!instance_exists(obj_camera_handler)){
		instance_create_layer(x,y,layer,obj_camera_handler);
	}
	if(!instance_exists(obj_dialog_manager)){
		instance_create_layer(0,0,layer,obj_dialog_manager);
	}
}

font_VHS=font_add("vhs.ttf",10,true,0,32,128);
