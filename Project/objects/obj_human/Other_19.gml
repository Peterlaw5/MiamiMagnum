/// @description SET HORIZONTAL AIM
if(instance_exists(weapon_id)){
	if(weapon_id.image_angle!=0){
		if(object_index==obj_player){
			switch(state){
				case scr_idle:{spr=spr_player_idle;break;}
				case scr_walk:{spr=spr_player_walk;break;}
				case scr_duck:{spr=spr_player_duck;break;}
				case scr_jump:{spr=spr_player_jump;break;}
				case scr_fall:{spr=spr_player_fall;break;}
			}
		}
	}
	weapon_id.image_angle=0;
}
	

