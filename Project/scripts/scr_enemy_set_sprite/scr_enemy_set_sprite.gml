///@arg0 sprite ranged
///@arg1 sprite machinegun
///@arg2 sprite shotgun
///@arg3 sprite magnum
///@arg4 true=sprite_index || false == spr

if(argument4){
	switch(object_index){
		case obj_enemy_ranged	 :	{sprite_index=argument0;break;}
		case obj_enemy_machinegun:	{sprite_index=argument1;break;}
		case obj_enemy_shotgun	 :	{sprite_index=argument2;break;}
		case obj_enemy_magnum	 :	{sprite_index=argument3;break;}
	}
}else{
	switch(object_index){
		case obj_enemy_ranged	 :	{spr=argument0;break;}
		case obj_enemy_machinegun:	{spr=argument1;break;}
		case obj_enemy_shotgun	 :	{spr=argument2;break;}
		case obj_enemy_magnum	 :	{spr=argument3;break;}
	}
}
