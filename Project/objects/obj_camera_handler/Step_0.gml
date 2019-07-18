if(!stop){
	if(reach){
		if(enemy_check){
			var cx=camera_get_view_x(view_camera[0]);
			var cy=camera_get_view_y(view_camera[0]);
			var width=camera_get_view_width(view_camera[0]);
			var height=camera_get_view_height(view_camera[0]);
			var enemies=ds_list_create();
			collision_rectangle_list(cx,cy,cx+width,cy+height,obj_enemy,false,true,enemies,false);
			if(ds_list_empty(enemies))enemy_check=false;
		}else{		
			x+=hsp;	
			if(x>=obj_player.x+distance){
				x=obj_player.x+distance;
				y=obj_player.y;
				reach=false;
			}
		}
	}else{
		if (room != rm_level_run && room != rm_level_run2)
		{
			if(obj_player.right){
				if(obj_player.x>=x-distance){
					x=obj_player.x+distance;
					y=obj_player.y;
				}
			}
		}else{
			x=obj_player.x+distance;
			y=obj_player.y;
		}
	}
}