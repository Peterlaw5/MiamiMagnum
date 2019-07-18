/// @desc duck state
/// @arg sprite

//SET SPRITE
if(sprite_index!=argument0&&!throwing){
	sprite_index = argument0;
	image_speed=1;
}
image_xscale=dir;


//SET AIMING POINT
event_user(SET_AIM_HORIZONTAL);

//CHANGE STATE
if(!duck)event_user(SET_IDLE);
else if(left||right)event_user(SET_DIR);
else if(throw)scr_throw(spr_player_throw);



///ACTIONS


//SHOOT
if(throwing){
	scr_throw(sprite_index);
}else{
	if(shoot){
		switch(dir){
			case -1: {scr_shoot(180);break;}
			case  1: {scr_shoot(0);break;}
		}
	
	}
}