if (follow_path==true)
{
	path_start(path_player_cutscene, 5, path_action_stop, false);
	follow_path=false;
}


if(weapon_id==noone){
	weapon_id=instance_create_layer(x+27, y-35, "Instances", obj_weapon);
	weapon_id.user_id=id;
}