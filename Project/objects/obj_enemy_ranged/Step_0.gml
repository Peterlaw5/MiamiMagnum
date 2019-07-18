/// @description Insert description here
// You can write your code in this editor
event_inherited();
cd-=1;
if(active){
	if(obj_player.x<x){left=true;image_xscale=-1; event_user(SET_DIR);}
	else if(obj_player.x>x){right=true;image_xscale=1;event_user(SET_DIR);}
	if(left&&obj_player.x+safezone>x)left=false;
	if(right&&obj_player.x-safezone<x)right=false;
	if(state==scr_fall){left=false;right=false;event_user(SET_IDLE);}
	if(state==scr_walk&&!position_meeting(x+(dir*move_speed),y+1,obj_platform)){left=false;right=false;event_user(SET_IDLE);}
	var vertical_collider_down=collision_rectangle(x-sprite_width/2,y,x+sprite_width/2,y+room_height,obj_player,false,true);
	var vertical_collider_up=collision_rectangle(x-sprite_width/2,y,x+sprite_width/2,y-room_height,obj_player,false,true);
	if(vertical_collider_down!=noone){
		scr_enemy_set_sprite(spr_enemy_ranged_gun_aim_down,spr_enemy_machinegun_aim_down,spr_enemy_shotgun_aim_down,spr_enemy_revolver_aim_down,true);
		if(image_xscale=-1){
			scr_shoot_enemy(270,x+3,y-20);
		}else scr_shoot_enemy(270,x-3,y-20);
	}
	else if(vertical_collider_up!=noone){
		scr_enemy_set_sprite(spr_enemy_ranged_gun_aim_up,spr_enemy_machinegun_aim_up,spr_enemy_shotgun_aim_up,spr_enemy_revolver_aim_up,true);
		if(image_xscale=-1){
			scr_shoot_enemy(90,x-5,y-sprite_height+10);
		}else scr_shoot_enemy(90,x+5,y-sprite_height+10);
		
	}
	else {sprite_index=spr;}
	var horizontal_collider=collision_line(x,y-sprite_height/2,x+(dir*camera_get_view_width(view_camera[0])),y-sprite_height/2,obj_player,false,true);
	var horizontal_collider_duck=collision_line(x,y-15,x+(dir*camera_get_view_width(view_camera[0])),y-15,obj_player,false,true);
	if(horizontal_collider!=noone){
		switch(dir){
			case  1: {scr_shoot_enemy(0,x+17,y-sprite_height/2);break;}
			case -1: {scr_shoot_enemy(180,x-17,y-sprite_height/2);break;}
		}
		if(obj_player.duck){
			sleeping_counter++;
			alarm[1] = sleeping_frames;
		}else if(duck){
		
			if(sleeping_counter++>=sleeping_frames){
				duck=false;
				sleeping_counter=0;
			}	
		}
		sleeping_counter++;
	}else if(horizontal_collider_duck!=noone&&duck){
		switch(dir){
			case  1: {scr_shoot_enemy(0,x+17,y-sprite_height/4);break;}
			case -1: {scr_shoot_enemy(180,x-17,y-sprite_height/4);break;}
		}
	}
}




