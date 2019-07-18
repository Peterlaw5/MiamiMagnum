randomize();
if(hp>0){
	if(throwed>=middle_trigger){phase=1;throwed=0;}
	if(prev_div!=divider){
		for(var i=0;i<n_curative;i++){
			with(instance_create_layer(int64(random_range(50,room_width-50)),obj_player.y,"Weapons",obj_curative)){
				spr=spr_donut;
			}
		}
		for(var i=0;i<n_coca;i++){
			instance_create_layer(int64(random_range(50,room_width-50)),obj_player.y,"Weapons",obj_cocaine);	
		}
		for(var i=0;i<n_molotof;i++){
			instance_create_layer(int64(random_range(50,room_width-50)),obj_player.y,"Weapons",obj_molotof_drop);	
		}
		prev_div=divider;
	}


	event_user(phase);


	if(hurt&&visible){
		event_user(SET_FLICKER);
	}
}

if(hp<=0){
	audio_stop_all();
	event_user(SET_DEATH);
	room = rm_game_victory;
}
