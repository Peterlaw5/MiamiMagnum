if(x>start_x+relative_x){
	hsp=0;
}

if(place_meeting(x,y-1,obj_player)){
		obj_player.x+=hsp;
		run=true;
}
if(run){
	x+=hsp;	
	var move=ds_list_create();
	instance_position_list(x,y-1,obj_enemy,move,false);
	for(var i=0;i<ds_list_size(move);i++){
		move[|i].x+=hsp;		
	}
}

