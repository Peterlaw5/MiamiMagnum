//throwable handler
if(!instance_exists(obj_throw)){
	instance_create_layer(x+27,y-35,"Weapons",obj_throw);
}


//weapon handler
if(weapon_id==noone){
	weapon_id=instance_create_layer(x+27,y-35,"Weapons",obj_weapon);
	weapon_id.user_id=id;
	with (weapon_id)
	{
		event_user(1);
	}
}


//handle special ability
if(special&&cocaine>=max_cocaine){
	invincibility=true;
	cocaine=0;
}	


//handle invulnerability and visive feedback damage
if(invulnerable||invincibility){
	event_user(SET_FLICKER);
}

//handle horizontal collisions with camera
var scx=camera_get_view_x(view_camera[0]);
var dcx=scx+camera_get_view_width(view_camera[0]);
if(x<=scx)x=scx;
else if(x>=dcx)x=dcx;

//handle death state
if(hp<=0){
	audio_stop_all();
	event_user(SET_DEATH);
}



event_inherited();