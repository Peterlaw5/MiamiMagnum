if(spr==spr_player_death){
	event_user(STOP_ANIMATION);
	room = rm_game_over;
}

if(spr==spr_player_fall||spr==spr_player_jump){
	event_user(STOP_ANIMATION);
}

if(spr=spr_player_idle_shoot){
	spr=spr_player_idle;	
}

if(spr=spr_player_walk_shoot){
	spr=spr_player_walk;	
}

if(spr=spr_player_duck_shoot){
	spr=spr_player_duck;	
}

if(spr=spr_player_jump_shoot){
	spr=spr_player_jump;	
}

if(spr=spr_player_fall_shoot){
	spr=spr_player_fall;	
}

if(sprite_index==spr_player_melee){
	switch(state){
		case scr_idle:{sprite_index=spr_player_idle;break;}
		case scr_walk:{sprite_index=spr_player_walk;break;}
		case scr_duck:{sprite_index=spr_player_duck;break;}
		case scr_jump:{sprite_index=spr_player_jump;break;}
		case scr_fall:{sprite_index=spr_player_fall;break;}
	}	
}