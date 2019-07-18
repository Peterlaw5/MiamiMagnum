/// @desc fall state
/// @arg sprite

//SET SPRITE
if(sprite_index!=argument0&&!throwing&&sprite_index!=spr_player_melee){
	sprite_index = argument0;
	image_speed=1;
}


//SET GRAVITY
vsp+=grv;

//CHECK VERTICAL COLLISIONS
for(var i=0;i<=vsp;i++){
	var inst=instance_position(x,y+i,obj_obstacles_parent);
	if(inst!=noone){
		while(y+vsp>inst.y){
			vsp--;	
		}
	}	
}




//CHANGE STATE
if(vsp==0){
	duck=false;//setto duck a false per evitare un glitch (cambio stato continuo idle/fall)
	event_user(SET_IDLE);	
}
if(left||right)event_user(SET_MOVE);
else if(throw)scr_throw(spr_player_throw);

//SET AIMING POINT
if(duck)event_user(SET_AIM_DOWN);
else if(up)event_user(SET_AIM_UP);
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
			else if(right)scr_shoot(0);
			else if(left)scr_shoot(180);	
			else if(duck)scr_shoot(270);
		}
	}
}



