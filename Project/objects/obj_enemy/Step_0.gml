/// @description Insert description here
// You can write your code in this editor


if (hp <= 0)
{
	event_user(SET_DEATH);
}
if(!instance_exists(obj_dialog)){
	if (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) >= x)
	{
		active = true;
	}
}

if(!active){
	scr_init_actions();
}
	

event_inherited();

