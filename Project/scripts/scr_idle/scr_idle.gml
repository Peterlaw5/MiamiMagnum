/// @desc idle state
/// @arg sprite

//SET SPRITE
if(sprite_index!=argument0&&!throwing&&sprite_index!=spr_player_melee){
	sprite_index = argument0;
	image_speed=1;
}




//CHANGE STATE
if(!place_meeting(x,y+1,obj_obstacles_parent))event_user(SET_FALL);
else if(duck)event_user(SET_DUCK);
else if(jump)event_user(SET_JUMP);
else if(left||right)event_user(SET_WALK);
else if(throw)scr_throw(spr_player_throw);

//SET AIMING POINT 
if(up)event_user(SET_AIM_UP);
else event_user(SET_AIM_HORIZONTAL);


///ACTIONS

//SHOOT
if(throwing){
	scr_throw(sprite_index);
}else{
	if(shoot){
		if(object_index==obj_player&&place_meeting(x,y,obj_enemy)&&sprite_index!=spr_player_melee){
			sprite_index=spr_player_melee;	
		}else{
			if(spr==spr_player_aim_up)scr_shoot(90);
			else switch(dir){
				case -1: {scr_shoot(180);break;}
				case  1: {scr_shoot(0);break;}
			}
		}
	}
}







