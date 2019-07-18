//get the actions to do
if(get_input){
	scr_input_handler();
}

if(room_get_name(room)!="rm_level_hellicopter"){
	scr_player_step_default();	
}else{
	scr_player_step_helicopter();	
}
