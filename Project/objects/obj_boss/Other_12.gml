/// @description WAIT
if(current_time/1000>wait){
	var enemies_alive=ds_list_create();
	collision_rectangle_list(-100,-100,room_width+100,room_height+100,obj_enemy,false,false,enemies_alive,false);
	if(ds_list_empty(enemies_alive)){
		for(var i=0;i<ds_list_size(enemy_spawn);i++){
			with(enemy_spawn[|i]){
				event_user(0);
			}
		}
		index=random_range(0,3);
		if(index==3)index--;
		/*prev_div=divider;
		if(hp>hp_max-hp_max/3)divider=1;
		else if(hp>hp_max/3)divider=2;
		else if(hp>0)divider=3;*/
		phase=0;
	}
}
	