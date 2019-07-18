/// @desc walk state
/// @arg sprite

//SET SPRITE 
if(sprite_index!=argument0&&!throwing&&sprite_index!=spr_player_melee){
	sprite_index = argument0;
	image_speed=1;
}
image_xscale=dir;



//CHECK HORIZONTAL COLLISIONS 


var endSprite=dir*10;
var movement=dir*move_speed;
if(x+movement+endSprite<=view_xport[0])x=view_xport[0];
else{ 
	if(position_meeting(x+endSprite+movement,y-1,obj_obstacle)){
		while(!position_meeting(x+endSprite,y-1,obj_obstacle)){
			x+=sign(movement);			
		}
		movement=0;
	}
	x += movement;
}




//CHANGE STATE 
if(vsp==0&&!position_meeting(x,y+1,obj_obstacles_parent))event_user(SET_FALL);
else if(duck)event_user(SET_DUCK);
else if(jump)event_user(SET_JUMP);
else if(left||right)event_user(SET_WALK);
else event_user(SET_IDLE);
if(throw)scr_throw(spr_player_walk_throw);


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
			if(up)scr_shoot(90);
			else if(left||right){
				if(dir==1)scr_shoot(0);
				else scr_shoot(180);
			}
		}
	}
}

