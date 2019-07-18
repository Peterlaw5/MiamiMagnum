/// @description SET AIM UP

switch(state){
	case scr_walk: {spr=spr_player_walk_aim_up;break;}
	default: {spr=spr_player_aim_up;break;}
}

event_inherited();

